class Orderitem < ApplicationRecord
  belongs_to :order
  has_many :artworks
end
