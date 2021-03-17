class CreateArtworksArtmedia < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks_artmedia do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :artmedium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
