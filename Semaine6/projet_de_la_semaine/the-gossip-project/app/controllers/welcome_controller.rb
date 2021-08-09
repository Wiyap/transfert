class WelcomeController < ApplicationController
  def index
    @all_gossip = Gossip.all
  end

  def landing_page
    @user = User.where(first_name:params[:first_name]).first
  end
end
