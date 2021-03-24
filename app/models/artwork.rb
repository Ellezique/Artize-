class Artwork < ApplicationRecord
  #belongs_to :user
  belongs_to :artist
  has_many :artworks_styles, dependent: :destroy
  has_many :styles, through: :artworks_styles
  has_many :artworks_artmedia, dependent: :destroy
  has_many :artmedia, through: :artworks_artmedia
  accepts_nested_attributes_for :styles, :artmedia 
  has_one_attached :artimage  
  validates :price, :inclusion => 0..999999

  def list_styles
    (self.styles.map { |style| style.style }).join(", ")
  end

  def list_artmedia
    (self.artmedia.map { |artmedium| artmedium.artmedium }).join(", ")
  end

end
