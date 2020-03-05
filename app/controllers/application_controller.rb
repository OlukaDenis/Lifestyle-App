class ApplicationController < ActionController::Base
    # Logs in the given user.
    def log_in(user)
        session[:author_id] = user.id
    end

    # Returns the current loggen-in user (if any)
    def current_user
        @current_user ||= User.find_by(id: session[:author_id]) if session[:author_id]
    end

    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end

        # Confirms a logged-in user.
    def logged_in_user
        unless logged_in?
        flash[:danger] = 'Please log in first'
        redirect_to login_url
        end
    end

    # Logs out the user
    def signout
        session.delete(:author_id)
        @current_user = nil
    end
end
