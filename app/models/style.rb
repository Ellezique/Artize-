class Style < ApplicationRecord
    has_many :artworks_styles
    has_many :artworks, through: :artworks_styles
end
