class ProvidedFood < ActiveRecord::Base
  has_one :storage_location
  has_many :inventory_transactions, :as => :food
end
