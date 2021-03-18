json.extract! artwork, :id, :art_title, :art_description, :available, :artist_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
