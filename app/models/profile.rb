class Profile < ApplicationRecord
  belongs_to :user
  has_one :customer
  has_one :artist

  def profile_name
    return "#{first_name} #{last_name}"
  end

end
