module HomeHelper
  def count_comments(potin_id)
    comment_quantity = Comment.where(:gossip_id => potin_id).count 
    return comment_quantity
  end

end
