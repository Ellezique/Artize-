class Order < ApplicationRecord
  belongs_to :customer
  has_many :orderitems #correct
  has_many :artworks, through: :orderitems #orderitems is a joining table between artwork and orders. @order.artworks
end

    