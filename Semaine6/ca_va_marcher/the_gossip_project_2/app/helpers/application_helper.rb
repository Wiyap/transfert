module ApplicationHelper
  include SessionsHelper
  def already_liked?(id)
    Like.where(gossip_id:id,user_id:session[:user_id]).first.nil?
  end 

  def like_count(id)
    Like.where(gossip_id:id).length
  end
end
