class CreateInventoryEntries < ActiveRecord::Migration
  def self.up
    create_table :inventory_entries do |t|
      t.datetime :added_date

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_entries
  end
end
