class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :art_title
      t.text :art_description
      t.decimal :art_price
      t.boolean :available
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
