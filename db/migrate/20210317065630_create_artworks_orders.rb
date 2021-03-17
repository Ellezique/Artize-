class CreateArtworksOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks_orders do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
