class Artist < ApplicationRecord
  has_many :artworks, dependent: :destroy


  def artist_name 
    return "#{artist_first_name} #{artist_last_name}"
  end 
  
 # def self.find_by_name(artist_first_name, artist_last_name)
 #   return Author.find_by(artist_first_name: artist_first_name, artist_last_name: artist_last_name)
 # end  
end
