class RinksController < ApplicationController

  def index
    @rinks = Rink.all
  end

end