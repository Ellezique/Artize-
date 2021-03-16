class CreateJoinTableArtworkStyle < ActiveRecord::Migration[6.1]
  def change
    create_join_table :artworks, :styles do |t|
      # t.index [:artwork_id, :style_id]
      # t.index [:style_id, :artwork_id]
    end
  end
end
