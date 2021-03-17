class Artwork < ApplicationRecord
  belongs_to :artist
  has_many :artworks_orders
  has_many :orders, through: :artworks_orders
  has_many :artworks_styles
  has_many :styles, through: :artworks_styles
  has_many :artworks_artmedia
  has_many :artmedia, through: :artworks_artmedia

  def list_styles
    (self.styles.map { |style| style.style_description }).join(", ")
  end

  def list_artmedia
    (self.artmedia.map { |artmedium| artmedium.artmedium_description }).join(", ")
  end

end
