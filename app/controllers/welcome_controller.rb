class WelcomeController < ApplicationController
  def index
    @next_skate = Skate.next_scheduled_skate
    @skate = Skate.find_by(date: @next_skate)
  end
end
