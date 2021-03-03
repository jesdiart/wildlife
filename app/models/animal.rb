class Animal < ApplicationRecord
  has_many:sightings, dependent: :destroy

  validates :name, presence: true
  validates :binomial_name, presence: true
  validates :class, presence: true
end
