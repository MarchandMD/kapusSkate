class Skater < ApplicationRecord
  has_many :skater_skates
  has_many :skates, through: :skater_skates
end
