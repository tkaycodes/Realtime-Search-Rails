class Product < ActiveRecord::Base
  has_many :bids, dependent: :destroy
end
