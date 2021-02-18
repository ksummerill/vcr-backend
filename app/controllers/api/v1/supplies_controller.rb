class Api::V1::SuppliesController < ApplicationController

  before_action :find_project

  def index
    supplies = Supply.all
    render json: supplies
  end

  def create
    @supply = @project.supplies.new(supply_params)
    if @supply.save
      render json: @project, status: :accepted
    else
      render json: {errors: @supply.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    supply = Supply.find(params["id"])
    project = Project.find(supply.project_id)
    supply.destroy
    render json: project
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def supply_params
    params.require(:supply).permit(:item, :project_id)
  end
end
