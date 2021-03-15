class Artwork < ApplicationRecord
  belongs_to :artist #correct
  has_one_attached :artimage
  belongs_to :orderitem #orderitem is a joining table between artwork and orders 
  has_many :orders, through: :orderitems #orderitems is a joining table between artwork and orders  @artwork.orderitems
  has_and_belongs_to_many :styles  #direct many-to-many connection
  has_and_belongs_to_many :artmedia #direct many-to-many connection
end
