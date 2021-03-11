json.extract! profile, :id, :first_name, :last_name, :street_number, :street_name, :suburb, :state, :postcode, :country, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
