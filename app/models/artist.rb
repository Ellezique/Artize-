class Artist < ApplicationRecord
  belongs_to :profile
  has_many :artworks, dependent: :destroy #@artist.destroy will destroy all art by that artist

  def artist_name
    return "#{profile.profile_name}"
  end


end
