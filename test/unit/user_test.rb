require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "validates_presence_of works" do
    assert User.create(:name => 'Dave', :email => 'dave@wendys.com', :password => 'asdffdsa').valid?, "User was not successfully created."
    assert !User.create(:name => nil, :email => 'dave2@wendys.com', :password => 'asdffdsa').valid?, "User was successfully created with nil name."
    assert !User.create(:name => 'Dave', :email => nil, :password => 'asdffdsa').valid?, "User was successfully created with nil email."
    assert !User.create(:name => 'Dave', :email => 'dave3@wendys.com', :password => nil).valid?, "User was successfully created with nil password."
    assert !User.create(:name => '', :email => 'dave4@wendys.com', :password => 'asdffdsa').valid?, "User was successfully created with empty name."
    assert !User.create(:name => 'Dave', :email => '', :password => 'asdffdsa').valid?, "User was successfully created with empty email."
    assert !User.create(:name => 'Dave', :email => 'dave5@wendys.com', :password => '').valid?, "User was successfully created with empty password."
  end

  test "validates_uniqueness_of email works" do
    assert User.create(:name => 'Dave', :email => 'dave@wendys.com', :password => 'asdffdsa').valid?, "User was not successfully created."
    assert !User.create(:name => 'Dave', :email => 'dave@wendys.com', :password => 'asdffdsa').valid?, "Duplicate user was successfully created."
  end

  test "password salting callback works" do
    unsalted_pass = 'asdfasdf'
    u = User.create(:name => 'Dave', :email => 'dave@wendys.com', :password => unsalted_pass)
    uid = u.id
    assert u.valid?, "User was not successfully created."
    salted_pass = u.password
    assert salted_pass != unsalted_pass, "Password was not salted."

    u2 = User.find(uid)
    u2.name = 'Dave Thomas'
    u2.save
    assert u2.password == salted_pass, "Password was re-salted upon saving."
  end

  test "adding a food creates an inventory entry" do
    u = users(:alex)
    f = provided_foods(:bread)
    before_size = u.inventory_entries.size
    u.add_food_to_inventory(f)
    assert u.inventory_entries.size == before_size + 1, "An InventoryEntry was not created."
  end

  test "adding a food creates an inventory transaction" do
    u = users(:alex)
    f = provided_foods(:bread)
    before_size = u.inventory_transactions.size 
    u.add_food_to_inventory(f)
    assert u.inventory_transactions.size == before_size + 1, "An InventoryTransaction was not created."
  end
end
