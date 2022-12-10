class Skater < ApplicationRecord
  has_many :skater_skates
  has_many :skates, through: :skater_skates

  validates :email, presence: true
  validates :email, uniqueness: true
  validates_presence_of :password

  has_secure_password


  def self.sort_by_creation_date
    order(created_at: :desc)
  end
end
