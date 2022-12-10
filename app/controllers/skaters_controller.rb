class SkatersController < ApplicationController
  def index
    @skaters = if params.include?(:sort)
                 Skater.order(params[:sort])
               elsif params.include?(:skater)
                 Skater.where('name like ?', "%#{params[:skater][:search_term]}%")
               else
                 Skater.sort_by_creation_date
               end
  end

  def show
    @skater = Skater.find(params[:id])
  end

  def new
    @skater = Skater.new
  end

  def create
    @skater = Skater.new(skater_params)

    if @skater.save
      # happy path
      flash[:success] = "welcome #{@skater.email.downcase}"
      redirect_to skater_path(@skater)
    else
      # sad path
      render :new
    end
  end

  def edit
    @skater = Skater.find(params[:id])
  end

  def update
    @skater = Skater.find(params[:id])

    if @skater.update(skater_params)
      redirect_to skater_path
    else
      render :edit
    end
  end

  def destroy
    @skater = Skater.find(params[:id])
    @skater.destroy
    redirect_to skaters_path
  end

  def login_form
  end

  def login
    skater = Skater.find_by(email: params[:email])
    flash[:success] = "Welcome, #{skater.email.downcase}!"
    redirect_to root_path
  end

  private

  def skater_params
    params.require(:skater).permit('name', 'email', 'phone', 'skill_level', 'position', 'user_name', 'city',
                                   'last_level', 'years', 'search_term', 'password')
  end
end
