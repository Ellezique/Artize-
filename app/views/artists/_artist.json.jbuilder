json.extract! artist, :id, :artist_first_name, :artist_last_name, :about_artist, :created_at, :updated_at
json.url artist_url(artist, format: :json)
