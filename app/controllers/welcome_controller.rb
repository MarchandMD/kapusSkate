class WelcomeController < ApplicationController
  def index
    today = Time.now.to_s.split[0]
    @next_skate = if Skate.find_by 'date >= ?', today
                    Skate.order(:date).find_by 'date >= ?', today
                  else
                    'No Skate scheduled'
                  end
    @skaters = Skater.all
  end
end
