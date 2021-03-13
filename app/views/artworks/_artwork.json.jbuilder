json.extract! artwork, :id, :art_title, :art_description, :art_price, :available, :orderitem_id, :artist_id, :style_id, :artmedium_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
