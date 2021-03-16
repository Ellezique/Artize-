class Artwork < ApplicationRecord
  belongs_to :artist
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :styles
  has_and_belongs_to_many :artmedia
end
