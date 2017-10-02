class UsersController < ApplicationController
  before_action :find_user, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:success] = "You successfully signed up!"
      redirect_to user_path(user)
    else
      flash[:error] = "Oops! Looks like there was an error signing up :("
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
