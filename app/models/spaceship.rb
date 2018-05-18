class Spaceship < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
