class ModelTransaction < ActiveRecord::Base
  has_one :user
  has_one :transaction_type
end
