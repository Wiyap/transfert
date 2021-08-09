module SessionsHelper
  def current_user
    user = User.find(session[:User_id])
  end

  def log_in(user)
    session[:User_id] = user.id
  end

  def is_logged_in?
    puts "is logged in?".magenta
    if session[:User_id] == nil
    return false
    else
      current_user
      return true
    end
  end


end
