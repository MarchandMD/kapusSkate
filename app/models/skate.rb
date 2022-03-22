class Skate < ApplicationRecord
  has_many :skaters
  validates :date, presence: true
end
