class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @likes = 0 
  end
end
