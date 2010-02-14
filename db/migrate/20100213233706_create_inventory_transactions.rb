class CreateInventoryTransactions < ActiveRecord::Migration
  def self.up
    create_table :inventory_transactions do |t|
      t.references :user
      t.references :transaction_type
      t.references :food

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_transactions
  end
end
