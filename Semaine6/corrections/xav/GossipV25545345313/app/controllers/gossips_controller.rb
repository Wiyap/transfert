class GossipsController < ApplicationController
  before_action :set_gossip, only: %i[ show edit update destroy ]
  before_action :check_user_validity,  only: %i[ new update create edit update destroy ]

  def index
    @gossips = Gossip.all
    if session[:user_id]
      # using find() would return an error if he can't find anything
      # so we use find_by instead, basicaly same process but not errors is return if the value is empty 
      @user = User.find_by(id: session[:user_id])
    end
  end

  def show
  end

  def new
    # redirect_to sign_up_path unless Current.user
    @gossip = Gossip.new
  end

  def edit
  end

  def create

    @gossip = Gossip.new(gossip_params)

      if @gossip.save
        redirect_to @gossip, notice: "Gossip was successfully created." 
      else
        render :new
      end
  end

  def update
      if @gossip.update(gossip_params)
        redirect_to @gossip, notice: "Gossip was successfully updated." 
      else
        render :edit
      end
  end

  def destroy
    @gossip.destroy
    redirect_to gossips_url, notice: "Gossip was successfully destroyed." 
  end

  private
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end

    def gossip_params
      params.require(:gossip).permit(:title, :content, :user_id)
    end

    def check_user_validity
      unless  Current.user  && Current.user.id == params[:id]
        redirect_to sign_up_path 
        return
      end
    end

end
