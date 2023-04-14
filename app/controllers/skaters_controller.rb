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
    skater = skater_params
    skater[:email] = skater[:email].downcase
    @skater = Skater.new(skater)

    if @skater.save
      flash[:success] = "welcome #{@skater.email}"
      redirect_to root_path
    else
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
    skater = Skater.find_by(email: params[:skater][:email])

    if !skater.nil? && skater.authenticate(params[:skater][:password])
      session[:skater_id] = skater.id unless session[:skater_id]
      flash[:success] = "Welcome, #{skater.email.downcase}!"
      redirect_to root_path
    else
      flash[:error] = "Wrong password or no user"
      render :login_form
    end
  end

  def logout
  end

  private

  def skater_params
    params.require(:skater).permit('email', 'password')
  end
end
