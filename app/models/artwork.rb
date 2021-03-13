class Artwork < ApplicationRecord
  belongs_to :orderitem
  belongs_to :artist
  belongs_to :style
  belongs_to :artmedium
  has_one_attached :artimage
end
