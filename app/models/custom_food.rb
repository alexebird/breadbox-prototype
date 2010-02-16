class CustomFood < ActiveRecord::Base
  has_one :user
  has_one :provided_food
end
