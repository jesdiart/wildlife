class Animal < ApplicationRecord

  validates :name, presence: true
  validates :binomial_name, presence: true
  validates :class, presence: true
end
