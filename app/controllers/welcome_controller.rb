class WelcomeController < ApplicationController
  def index
    today = Time.now.to_s.split[0]
    @skate = Skate.find_by "date > ?", today
    @skaters = Skater.all
  end
end
