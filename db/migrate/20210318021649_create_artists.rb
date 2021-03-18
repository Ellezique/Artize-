class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :artist_first_name
      t.string :artist_last_name
      t.text :about_artist

      t.timestamps
    end
  end
end
