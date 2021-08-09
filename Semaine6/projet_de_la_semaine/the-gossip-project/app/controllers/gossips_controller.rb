class GossipsController < ApplicationController
  def index
    @all_gossip = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new   
    @gossips = Gossip.new
  end


  def create
    @user = User.find(10)
    p params
    @gossip = Gossip.new(title:params[:gossip][:title], content:params[:gossip][:content], user_id:@user.id)
    if @gossip.save
      puts "efzfze"*50
      redirect_to gossips_path
      return
    else
      puts "ma vie c'est de la merde"*50
    end
    redirect_to gossips_path
  end
end
