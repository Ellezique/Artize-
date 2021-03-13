class Artist < ApplicationRecord
  belongs_to :profile
  has_many :artworks
end
