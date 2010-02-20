class InventoryTransaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :food, :polymorphic => true

  def to_s
    "InventoryTransaction: " + self.food.name.capitalize + " " + self.transaction_type
  end
end
