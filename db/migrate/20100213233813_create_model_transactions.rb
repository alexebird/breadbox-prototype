class CreateModelTransactions < ActiveRecord::Migration
  def self.up
    create_table :model_transactions do |t|
      t.references :user
      t.integer :model_id
      t.references :transaction_type
      t.string :field_name
      t.string :old_value
      t.string :new_value

      t.timestamps
    end
  end

  def self.down
    drop_table :model_transactions
  end
end
