class CreateProvidedFoods < ActiveRecord::Migration
  def self.up
    create_table :provided_foods do |t|
      t.string :name
      t.integer :lasts_in_room
      t.integer :lasts_in_fridge
      t.integer :lasts_in_freezer
      t.references :storage_location

      t.timestamps
    end
  end

  def self.down
    drop_table :provided_foods
  end
end
