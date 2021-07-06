class Shop < ApplicationRecord
  belongs_to :vendor
  has_many :products
end
