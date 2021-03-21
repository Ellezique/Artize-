class CreateArtmedia < ActiveRecord::Migration[6.1]
  def change
    create_table :artmedia do |t|
      t.string :artmedium

      t.timestamps
    end
  end
end
