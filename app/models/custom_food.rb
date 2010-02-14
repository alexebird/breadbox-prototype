class CustomFood < ActiveRecord::Base
  belongs_to :user
  belongs_to :provided_food
end
