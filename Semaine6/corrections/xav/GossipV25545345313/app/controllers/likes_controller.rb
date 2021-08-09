class LikesController < ApplicationController
  before_action :find_gossip
  
  def create
    if Current.user.likes.where(gossip_id: @gossip.id).empty?
      @gossip.likes.create(user_id: Current.user.id)
      redirect_to gossip_path(@gossip)
    else
      render gossip_path(@gossip)
    end
  end
  def destroy
    if Current.user
    Current.user.likes.where(gossip_id: @gossip.id).first.destroy 
    end
    redirect_to gossip_path(@gossip.id)
  end
  private
  
  def find_gossip
    @gossip = Gossip.find(params[:gossip_id])
  end

end
