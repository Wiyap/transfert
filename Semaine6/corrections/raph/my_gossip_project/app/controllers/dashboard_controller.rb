class DashboardController < ApplicationController
  def index
    puts "User".magenta
    @user = current_user
    id = @user[:id]
     @user = User.find(id) 
     usr_city = @user.city_id
     @city = City.find(usr_city)
  end
end
