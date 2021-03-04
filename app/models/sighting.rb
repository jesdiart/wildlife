class Sighting < ApplicationRecord
  belongs_to :animal
  belongs_to :region

  validates :spotter, presence: true
  validates :date, presence: true
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90}
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180}
end
