class Spaceship < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
