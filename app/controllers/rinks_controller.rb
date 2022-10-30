class RinksController < ApplicationController

  def index
    @rinks = Rink.all
  end

  def new; end

  def create
    Rink.create!(rink_params)

    redirect_to '/rinks'
  end

  private

  def rink_params
    params.permit(:name, :address, :city, :state, :phone)
  end


end