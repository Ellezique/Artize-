class Artmedium < ApplicationRecord
    has_many :arworks_artmedia
    has_many :artworks, through: :artworks_artmedia
end
