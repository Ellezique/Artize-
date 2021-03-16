class CreateJoinTableArtmediumArtwork < ActiveRecord::Migration[6.1]
  def change
    create_join_table :artmedia, :artworks do |t|
      # t.index [:artmedium_id, :artwork_id]
      # t.index [:artwork_id, :artmedium_id]
    end
  end
end
