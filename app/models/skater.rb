class Skater < ApplicationRecord
  belongs_to :skate

  validates :name, presence: true
end
