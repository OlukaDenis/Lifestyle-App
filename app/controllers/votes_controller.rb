class VotesController < ApplicationController
    before_action :logged_in_user

    def create
        @vote = current_user.votes.new(article_id: params[:article_id])

        if @vote.save
            redirect_to request.referrer, notice: 'You voted a article.'
        else
            redirect_to request.referrer, alert: 'You cannot vote this article.'
        end
    end

    def destroy
        vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
        if vote
            vote.destroy
            redirect_to request.referrer, notice: 'You unvoted this article.'
        else
            redirect_to request.referrer, alert: 'You cannot unvoted article that you did not like before.'
        end
    end

end
