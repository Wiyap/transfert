class PotinController < ApplicationController
  def index
    puts "Potin".magenta
    id = params[:id]
    @potin = params[:id]
    first_gossip = Gossip.first.id

    @gossip = Gossip.find(first_gossip + id.to_i)
    user_identification = @gossip.user_id
     @user = User.find(user_identification) 

  end
end
