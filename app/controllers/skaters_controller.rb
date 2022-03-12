class SkatersController < ApplicationController
  def index
    @skaters = Skater.all
  end

  def new
    @skater = Skater.new
  end

  def show
    @skater = Skater.find(params[:id])
  end

  def create
    @skater = Skater.new(skater_params)

    @skater.save
    redirect_to skaters_path
  end

  def edit
  end

  private

  def skater_params
    params.require(:skater).permit(:name, :email, :phone)
  end
end
