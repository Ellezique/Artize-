class CreateArtmedia < ActiveRecord::Migration[6.1]
  def change
    create_table :artmedia do |t|
      t.string :artmedium_description

      t.timestamps
    end
  end
end
