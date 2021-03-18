class Artist < ApplicationRecord
  has_many :artworks


  def artist_name 
    return "#{artist_first_name} #{artist_last_name}"
  end 
  

end
