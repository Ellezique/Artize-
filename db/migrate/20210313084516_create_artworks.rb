class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :art_title
      t.text :art_description
      t.decimal :art_price
      t.boolean :available
      t.references :orderitem, null: false, foreign_key: true
      t.references :artist, index: true, foreign_key: true #non-unique index as multiple artworks can have the same artist
      t.references :style, null: false, foreign_key: true
      t.references :artmedium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
