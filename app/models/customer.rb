class Customer < ApplicationRecord
  belongs_to :profile
  has_many :orders

  def customer_name
    return "#{profile.profile_name}"
  end

  def customer_address
    return "#{profile.street_number}, #{profile.street_name}, #{profile.suburb}, #{profile.postcode}, #{profile.country}"
  end


end
