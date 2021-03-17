class CreateArtworksStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks_styles do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
