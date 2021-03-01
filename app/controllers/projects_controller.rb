class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :update, :destroy]
  def index
    # Inital thought
    @projects = Portfolio.find(params[:id]).projects.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.portfolio = Portfolio.find(params[:id])
    if @project.save!
      redirect_to @project
    else 
      render :new
    end
  end

  def update
    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @portfolio = Porfolio.find(params[:id])
    @project.destroy
    redirect_to @portfolio
  end

  private 

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :github_url, :deployed, :url)
  end
end
