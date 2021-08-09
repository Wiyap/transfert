class WelcomeController < ApplicationController
  def index
    puts "Welcome".magenta
   @first_name = params[:id]
  end
end
