class CustomFood < ActiveRecord::Base
  belongs_to :user
  belongs_to :provided_food
  has_one :storage_location
  has_many :inventory_transactions, :as => :food
end
