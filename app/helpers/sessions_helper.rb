module SessionsHelper
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


    # Logs out the user
    def signout
        session.delete(:author_id)
        @current_user = nil
    end

    def vote_or_unvote_btn(article)
        @vote = Vote.find_by(user: current_user, article: article )
    end
end
