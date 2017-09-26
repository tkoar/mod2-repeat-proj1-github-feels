class ReposController < ApplicationController
  before_all :find_repo, except: [:index, :new]

  def index
    @repo = Repo.all
  end

  def new
    @repo = Repo.new
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

  def repo_params
    params.require(:repo).permit(:repo_name, :user_id, :language)
  end

  def find_repo
    @repo = Repo.find(params[:id])
  end
end
