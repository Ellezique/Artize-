class CreateJoinTableArtworkOrder < ActiveRecord::Migration[6.1]
  def change
    create_join_table :artworks, :orders do |t|
      # t.index [:artwork_id, :order_id]
      # t.index [:order_id, :artwork_id]
    end
  end
end
