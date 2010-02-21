# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100213233813) do

  create_table "custom_foods", :force => true do |t|
    t.string   "name"
    t.integer  "lasts_in_room"
    t.integer  "lasts_in_fridge"
    t.integer  "lasts_in_freezer"
    t.integer  "storage_location_id"
    t.integer  "user_id"
    t.integer  "provided_food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_entries", :force => true do |t|
    t.datetime "added_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_transactions", :force => true do |t|
    t.integer  "user_id"
    t.string   "transaction_type"
    t.integer  "food_id"
    t.string   "food_type"
    t.integer  "inventory_entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "model_transactions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "model_id"
    t.string   "transaction_type"
    t.string   "field_name"
    t.string   "old_value"
    t.string   "new_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provided_foods", :force => true do |t|
    t.string   "name"
    t.integer  "lasts_in_room"
    t.integer  "lasts_in_fridge"
    t.integer  "lasts_in_freezer"
    t.integer  "storage_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storage_locations", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
