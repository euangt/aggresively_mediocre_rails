class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :update, :destroy]
  def index
    @projects = Project.where(Project.user )
  end

  def show
  end

  def new
  end

  def create

  end

  def update

  end

  def destroy

  end

  private 

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params

  end
end
