class CommentairesController < ApplicationController
 
  def new

  end

  def create
    puts "Create".magenta
    puts params
    @comment = Comment.new(comment_params)
    if @comment.save 
      session[:success] = "Comment added"
      redirect_to home_index_path
    else
      session[:error] = "Comment not added"
      render 'new'
    end
  end
    
  def edit
    puts "Edit".magenta
    @comment = Comment.find(params[:id].to_i + 1)
  end

  def update
  puts "Comment update".magenta
  @comment = Comment.find(params[:id])
  @comment.update(update_comment_params)
    if @comment.save 
      session[:success] = "Comment edited"
      redirect_to home_index_path
    else
      session[:error] = "Comment not edited. Title: (2-14 char) Content: (char > 2)"
      render 'edit'
    end
  end

  def destroy
    puts "Coment destroy".magenta
    @comment = Comment.find(params[:id])
      if @comment.destroy 
        session[:success] = "Comment deleted"
        redirect_to home_index_path
      else
        session[:error] = "Comment not deleted. Why? good question"
        render ''
      end
  end

private

def comment_params
  params.require(:comment).permit(:content, :gossip_id, :user_id)
end

def update_comment_params
  params.require(:comment).permit(:content)
end

end
