class ArtworksOrder < ApplicationRecord
  belongs_to :artwork
  belongs_to :order
end
