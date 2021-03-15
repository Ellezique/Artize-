class Orderitem < ApplicationRecord
  belongs_to :order #orderitems is a joining table between artwork and orders
  has_many :artworks #orderitems is a joining table between artwork and orders 
end
