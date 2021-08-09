class PotinController < ApplicationController
  def show
    puts "Potin".magenta
    id = params[:id]
    @potin = params[:id]
    first_gossip = Gossip.first.id
    @gossip = Gossip.find(first_gossip + id.to_i)
    user_identification = @gossip.user_id
    @user = User.find(user_identification) 
    @comment = Comment.where(gossip_id: @gossip.id)
  end

  def new

  end

  def create
    puts "Create".magenta
    puts params
    @gossip = Gossip.new(gossip_params)
    if @gossip.save 
      session[:success] = "Gossip added"
      redirect_to home_index_path
    else
      session[:error] = "Gossip not added. Title: (2-14 char) Content: (char > 2)"
      render 'new'
    end
  end

  def edit
    puts "Edit".magenta
    @potin = Gossip.find(params[:id].to_i + 1)
  end

  def update
    puts "Update".magenta
    @potin = Gossip.find(params[:id])
    @potin.update(gossip_params)
      if @potin.save 
        session[:success] = "Gossip edited"
        redirect_to home_index_path
      else
        session[:error] = "Gossip not edited. Title: (2-14 char) Content: (char > 2)"
        render 'edit'
      end
    end

  def destroy
    puts "Destroy".magenta
    @potin = Gossip.find(params[:id])
      if @potin.destroy 
        session[:success] = "Gossip deleted"
        redirect_to home_index_path
      else
        session[:error] = "Gossip not deleted. Why? good question"
        render ''
      end
  end


  private



  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end

  def update_gossip_params
    params.require(:gossip).permit(:title, :content)
  end
end
