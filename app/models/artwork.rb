class Artwork < ApplicationRecord
  belongs_to :artist
  has_many :artworks_styles
  has_many :styles, through: :artworks_styles
  has_many :artworks_artmedia
  has_many :artmedia, through: :artworks_artmedia

end
