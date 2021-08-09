class UserController < ApplicationController
  def index
    puts "User".magenta
    id = params[:id]
    #user_identification = @gossip.user_id
     @user = User.find(id) 
     usr_city = @user.city_id
     @city = City.find(usr_city)
  end
end
