class SkatesController < ApplicationController
  def index
    @skates = Skate.all
  end

  def new
    @skate = Skate.new
  end

  def create
    @skate = Skate.new(skate_params)

    @skate.save
    redirect_to root_path
  end

  private

  def skate_params
    params.require(:skate).permit(:date)
  end
end
