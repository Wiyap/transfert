class UserController < ApplicationController
  def show
    puts "User".magenta
    id = params[:id]
     @user = User.find(id) 
     usr_city = @user.city_id
     @city = City.find(usr_city)
  end

  def new
    puts "User New".magenta
    @city = City.all
  end


  def create
    puts "User Create".magenta
    @city = City.all
    @user = User.new(user_params)
    if @user.save 
      user = @user
      log_in(user)
      session[:success] = "Account created"
      redirect_to home_index_path
    else
      session[:error] = "Account not created. Make sure you enter the correct parameters"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password)
  end

end

