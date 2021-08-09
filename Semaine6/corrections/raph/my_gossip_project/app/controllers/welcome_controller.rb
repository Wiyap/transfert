class WelcomeController < ApplicationController
  def show
    puts "Welcome".magenta
   @first_name = params[:id]
  end
end
