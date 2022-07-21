class Skate < ApplicationRecord
  has_and_belongs_to_many :skaters
end
