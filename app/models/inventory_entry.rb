class InventoryEntry < ActiveRecord::Base
  has_one :inventory_transaction
  has_one :food, :through => :inventory_transaction
  has_one :user, :through => :inventory_transaction
end
