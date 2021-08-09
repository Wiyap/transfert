class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      #signing in the user
      #can acces cookies with this:
        #cookies[:user_id]
      # BUT it's bad practice, low security (someone can change the user id into the request)
      # so prefer session_coockies :
      session[:user_id] = @user.id
      # Like this the is set on server side. So browsers can't deal with it

      redirect_to root_path, notice: "Utilisateur créer, félicitations !"
    else
      render :new
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name,
                                  :last_name,
                                  :email,
                                  :description,
                                  :age,
                                  :password,
                                  :password_confirmation,
                                  :city_id)
  end
end
