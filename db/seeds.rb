# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create(:name => 'Alex Bird', :email => 'alexebird@gmail.com',:password => 'asdfasdf')
User.create(:name => 'Dave Thomas', :email => 'dave@wendys.com',:password => 'asdfasdf')
