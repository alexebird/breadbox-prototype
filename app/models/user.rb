require 'digest/sha2'

class User < ActiveRecord::Base
  has_many :custom_foods
  has_many :model_transactions
  has_many :inventory_transactions
  has_many :inventory_entries, :through => :inventory_transactions

  validates_presence_of :email, :name, :password
  validates_uniqueness_of :email
  validates_length_of :password, :minimum => 6

  before_create { |user| user.password = User.salt_password(user.password) if user.new_record? }

  def add_food_to_inventory(food)
    ie = InventoryEntry.create(:added_date => Time.now)
    self.inventory_transactions.create(:food => food, :user => self, :inventory_entry => ie, :transaction_type => TransactionType::ADDED)
  end

  class << self
    def salt_password(password)
      Digest::SHA2.hexdigest(password + 'SdFAjLkZsDGf7905Q34hJKXasFbbbbbbb')
    end

    def find_by_login(email, password)
      salted_pass = User.salt_password(password)
      u = User.first(:conditions => {:email => email, :password => salted_pass})
      puts u
      u
    end
  end
end
