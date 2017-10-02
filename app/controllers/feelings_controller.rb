class FeelingsController < ApplicationController
  before_action :find_feeling, except: [:index, :new]

  def index
    @feelings = Feeling.all
  end

  def new
    @feeling = Feeling.new
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  private

  def feeling_params
    params.require(:feeling).permit(:repo_id, :user_id, :feeling_content)
  end

  def find_feeling
    @feeling = Feeling.find(params[:id])
  end

end
