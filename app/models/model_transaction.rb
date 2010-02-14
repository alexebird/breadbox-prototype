class ModelTransaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :transaction_type
end
