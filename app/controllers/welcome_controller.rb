class WelcomeController < ApplicationController
  def index
    @next_skate = Skate.next_scheduled_skate
    @skate = Skate.find_by(date: @next_skate)
    @next_three_skates = Skate.next_three_skates
  end
end
