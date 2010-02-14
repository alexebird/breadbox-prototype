class InventoryTransaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :transaction_type
  belongs_to :food
end
