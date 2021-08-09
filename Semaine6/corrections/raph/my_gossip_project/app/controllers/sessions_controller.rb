class SessionsController < ApplicationController
  def new
    puts "Session New".magenta
    @user = User.all
  end

  def create
    puts "Session Create".magenta
    user_params = params[:user]
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      log_in(user)
      session[:success] = "Successfully logged in"
      redirect_to home_index_path
  
    else
      session[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:User_id)
    session[:success] = "Successfully logged out"
    redirect_to home_index_path
  end


end
