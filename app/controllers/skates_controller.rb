class SkatesController < ApplicationController
  def index
    @skates = Skate.order(params[:sort])
    @skate = Skate.new
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

    if @skate.save
      redirect_to @skate
    else
      render 'new'
    end
  end

  def update
    @skate = Skate.find(params[:id])

    if @skate.update(skate_params)
      redirect_to @skate
    else
      render 'edit'
    end
  end

  def destroy
    @skate = Skate.find(params[:id])
    @skate.destroy

    redirect_to skates_path
  end

  private

  def skate_params
    params.require(:skate).permit(:date)
  end
end
