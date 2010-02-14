class CreateProvidedFoods < ActiveRecord::Migration
  def self.up
    create_table :provided_foods do |t|
      t.string :name
      t.integer :fresh_for
      t.references :storage_location

      t.timestamps
    end
  end

  def self.down
    drop_table :provided_foods
  end
end
