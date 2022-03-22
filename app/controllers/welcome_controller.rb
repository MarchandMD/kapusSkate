class WelcomeController < ApplicationController
  def index
    today = Time.now.to_s.split[0]
    @skate = Skate.order(:date).find_by "date >= ?", today
    @skaters = Skater.all
  end
end
