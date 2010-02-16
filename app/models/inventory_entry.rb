class InventoryEntry < ActiveRecord::Base
  has_one :inventory_transaction
end
