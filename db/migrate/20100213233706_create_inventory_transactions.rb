class CreateInventoryTransactions < ActiveRecord::Migration
  def self.up
    create_table :inventory_transactions do |t|
      t.references :user
      t.string :transaction_type
      t.references :food, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_transactions
  end
end
