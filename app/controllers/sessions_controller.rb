class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      redirect_to root_url
    else
      flash.now[:danger] = 'Wrong username'
      render 'new'
    end
  end

  def destroy
    signout if logged_in?
    flash.now[:warning] = 'You have signed out!'
    redirect_to root_url
  end
end
