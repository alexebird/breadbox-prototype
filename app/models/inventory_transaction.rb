class InventoryTransaction < ActiveRecord::Base
  has_one :user
  has_one :transaction_type
  has_one :food
end
