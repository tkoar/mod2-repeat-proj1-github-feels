class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def logout
    session[:user_id] = nil
    flash[:logout]
    redirect_to signup_path
  end

  private

end
