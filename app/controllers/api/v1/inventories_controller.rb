class Api::V1::InventoriesController < ApplicationController

  before_action :find_project

  def index
    inventories = Inventory.all
    render json: inventories
  end

  def create
    @inventory = @project.inventories.new(inventory_params)

    if @inventory.save
      render json: @project, status: :accepted
    else
      render json: {errors: @inventory.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    inventory = Inventory.find(params[:id])
    render json: inventory
  end

  def update
    inventory = Inventory.find(params[:id])
    inventory.update(name: params["inventory"]["name"], description: params["inventory"]["description"])
    inventory.save
    render json: inventory
  end

  def destroy
    # binding.pry
    inventory = Inventory.find(params["id"])
    project = Project.find(inventory.project_id)
    inventory.destroy
    render json: project
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def inventory_params
    params.require(:inventory).permit(:name, :description, :inventory_id, :project_id)
  end
end
