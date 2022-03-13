class WelcomeController < ApplicationController
  def index
    @skate = Skate.first
    @skaters = Skater.all
  end
end
