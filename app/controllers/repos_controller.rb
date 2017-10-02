class ReposController < ApplicationController
  before_action :find_repo, except: [:index, :new, :create]

  def index
    @repo = Repo.all
  end

  def new
    @repo = Repo.new
  end

  def create
    repo = Repo.new(repo_params)
    if repo.save
      flash[:success] = "You successfully created a new repository!"
      redirect_to repo_path(repo)
    else
      flash[:error] = "Oops! Looks like there was an error creating this repo :("
      render :new
    end
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
