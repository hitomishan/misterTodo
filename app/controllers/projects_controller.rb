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
        # 保存完了したらの処理
        render '/projects/new'
      else
        render '/projects/new'
      end
    end

    def update
      
    end

    def project_params
      params.require(:project).permit(:title,:content)
    end
end
