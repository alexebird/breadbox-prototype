require 'digest/sha2'

class User < ActiveRecord::Base
  has_many :custom_foods
  has_many :model_transactions
  has_many :inventory_transactions
  has_many :inventory_entries, :through => :inventory_transaction

  validates_presence_of :email, :name, :password
  validates_uniqueness_of :email
  validates_length_of :password, :minimum => 6

  before_create { |user| user.password = User.salt_password(user.password) if user.new_record? }

  def self.salt_password(password)
    Digest::SHA2.hexdigest(password + 'SdFAjLkZsDGf7905Q34hJKXasFbbbbbbb')
  end

  def add_food_to_inventory(food)
    it = InventoryTransaction.create(:food => food, :user => self, :transaction_type => TransactionType::ADDED)
    entry = InventoryEntry.create(:inventory_transaction => it, :added_date => Time.now)
    #self.inventory_entries << entry
  end
end
