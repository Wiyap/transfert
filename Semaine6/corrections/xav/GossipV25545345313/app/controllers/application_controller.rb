class ApplicationController < ActionController::Base
    #to be able to acces to the current user session from anywhere
    #before to get the attibute current from our model current
    before_action :set_current_user
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

end
