class Artmedium < ApplicationRecord
    has_many :artworks_artmedia
    has_many :artworks, through: :artworks_artmedia
end
