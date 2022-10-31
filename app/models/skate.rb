class Skate < ApplicationRecord
  belongs_to :rink
  has_many :skater_skates
  has_many :skaters, through: :skater_skates

  def self.next_scheduled_skate
    today = Time.now.to_s.split[0]
    next_skate = where('date >= ?', today).order(:date).first
    next_skate.date.strftime("%A %B %d, %Y") unless next_skate.nil?
  end

  def self.next_three_skates
    today = Time.now.to_s.split[0]
    limit(3).where('date >= ?', today).order('date')
  end
end
