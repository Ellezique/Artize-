class Order < ApplicationRecord
  belongs_to :customer
  has_many :artworks_orders
  has_many :artworks, through: :artworks_order
end

    