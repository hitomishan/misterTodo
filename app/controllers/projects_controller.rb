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
      if @project.save
        redirect_to projects_url
      else
      end
    end

    def edit  
      @project = Project.find(params[:id])
    end

    def update
      @project = Project.find(params[:id])
      if @project.update(project_params)
        render :show
      else
      end
    end

    def destroy
      Project.find(params[:id]).destroy!
      redirect_to projects_url
    end

    def project_params
      params.require(:project).permit(:title,:content)
    end
end
