class UserController < ApplicationController

  before_all :find_user, except: [:new]

  def new
    @user = User.new
  end

  def create
  end

  def edit
  end

  def update
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
