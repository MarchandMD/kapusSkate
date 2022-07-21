class WelcomeController < ApplicationController
  def index
    today = Time.now.to_s.split[0]
    if Skate.find_by 'date >= ?', today
      @next_skate = Skate.order(:date).find_by 'date >= ?', today
    else
      @next_skate = "No Skate scheduled"
    end
    @skaters = Skater.all
  end
end
