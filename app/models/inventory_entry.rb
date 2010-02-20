class InventoryEntry < ActiveRecord::Base
  belongs_to :inventory_transaction
  has_one :food, :through => :inventory_transaction
  has_one :user, :through => :inventory_transaction
end
