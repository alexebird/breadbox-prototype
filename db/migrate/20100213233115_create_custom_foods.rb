class CreateCustomFoods < ActiveRecord::Migration
  def self.up
    create_table :custom_foods do |t|
      t.string :name
      t.integer :fresh_for
      t.references :storage_location
      t.references :user
      t.references :provided_food

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_foods
  end
end
