class CityController < ApplicationController
  def show
    puts "City".magenta
    city_id =params[:id]
    @city = City.find(city_id)
  end
end
