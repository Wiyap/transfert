class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      puts "Désolé Impossbl de Créer un User avec ses conditions"
    end
  end 

  def user_params
    params.require(:user).permit(:first_name,
                                :last_name,
                                :description,
                                :email,
                                :age,
                                :password_digest)
  end


end
