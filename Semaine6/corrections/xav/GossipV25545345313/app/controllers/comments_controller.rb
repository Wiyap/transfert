class CommentsController < ApplicationController
    before_action :check_user_validity,  only: %i[ new update create edit update destroy ]


  def create
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comments.create(comment_params)
        puts @comment.errors.messages

        redirect_to gossip_path(@gossip)
    end
    
  def edit
    # @gossip = Gossip.find(params[:gossip_id])
    # @comment = @gossip.comments.find(comment_params)
  end
    
  def update
      # @comment = Comment.find(comment_params)
      # if @comment.update(comment_params)
      #     redirect_to gossip_path(@gossip), notice: "Comment update !"
      # else
      #   render :edit
      # end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :gossip_id, :user_id)
  end

  def check_user_validity
    unless  Current.user  
      redirect_to sign_up_path
      return
    end
  end

end
