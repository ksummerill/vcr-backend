class Api::V1::ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: projects
    # render json: ProjectSerializer.new(projects)
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: ProjectSerializer.new(projects), status: :accepted
    else
      render json: {errors: project.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

end
