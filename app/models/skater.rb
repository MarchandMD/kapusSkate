class Skater < ApplicationRecord
  has_many :skater_skates
  has_many :skates, through: :skater_skates

  def self.sort_by_creation_date
    order(created_at: :desc)
  end
end
