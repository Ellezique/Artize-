class Profile < ApplicationRecord
  belongs_to :user
  has_one :customer
  has_one :artist
end
