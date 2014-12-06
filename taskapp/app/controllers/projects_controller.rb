class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
   @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to projects_path
  end

  private
    # for filtering
    def project_params
      # titleだけを抽出する
      params[:project].permit(:title)
    end
end
