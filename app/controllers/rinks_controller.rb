class RinksController < ApplicationController
  def index
    @rinks = Rink.all
  end

  def new; end

  def create
    rink = Rink.new(rink_params)

    if rink.save
      flash[:success] = "New rink created"
      redirect_to rinks_path
    else
      render :new
    end
  end

  private

  def rink_params
    params.permit(:name, :address)
  end
end
