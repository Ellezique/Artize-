class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.text :about_artist
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
