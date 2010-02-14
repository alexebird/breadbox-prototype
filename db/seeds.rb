# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

%w(created removed deleted changed added).each {|t| TransactionType.create(:name => t) }

%w(freezer cupboard).each {|t| StorageLocation.create(:name => t) }
StorageLocation.create(:name => 'refrigerator')

me = User.create(:name => 'Alex Bird', :email => 'alexebird@gmail.com', :password => 'asdfasdf')
