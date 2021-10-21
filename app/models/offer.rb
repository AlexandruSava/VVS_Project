class Offer < ApplicationRecord
  has_one_attached :image, :dependent => :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :country, presence: true
  validates :location, presence: true
  validates :meals, presence: true
  validates :host_name, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :stars, presence: true, :inclusion => 1..5
  validates :cleaning, presence: true, :inclusion => 0..100
  validates :food, presence: true, :inclusion => 0..100
  validates :staff, presence: true, :inclusion => 0..100
  validates :confort, presence: true, :inclusion => 0..100
  validates :minimum_stay, presence: true, :numericality => { :greater_than_or_equal_to => 1 }

  def get_rating(offer)
    (offer.cleaning + offer.food + offer.staff + offer.confort) / 4
  end

end
