class AddPriceToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :price, :decimal
  end
end
