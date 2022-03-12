class SkatesController < ApplicationController
  def index
    @skates = Skate.order(params[:sort])
  end

  def new
    @skate = Skate.new
  end

  def show
    @skate = Skate.find(params[:id])
  end

  def edit
    @skate = Skate.find(params[:id])
  end

  def create
    @skate = Skate.new(skate_params)

    @skate.save
    redirect_to root_path
  end

  def update
    @skate = Skate.find(params[:id])

    if @skate.update(skate_params)
      redirect_to @skate
    else
      render 'edit'
    end
  end

  private

  def skate_params
    params.require(:skate).permit(:date)
  end
end
