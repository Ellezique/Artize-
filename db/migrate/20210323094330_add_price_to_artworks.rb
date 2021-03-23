class AddPriceToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :price, :decimal, precision: 8, scale: 2, default: 250.00
  end
end
