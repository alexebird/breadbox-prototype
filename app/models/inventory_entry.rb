class InventoryEntry < ActiveRecord::Base
  belongs_to :inventory_transaction
end
