class Api::V1::InventoriesController < ApplicationController
  def index
    inventories = Inventory.all
    render json: inventories
  end

  def create
    inventory = Inventory.new(inventory_params)
    if inventory.save
      render json: inventory, status: :accepted
    else
      render json: {errors: inventory.errors.full_messages}, status: :unprocessible_entity
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
    inventory = Inventory.find(params[:id])
    inventory.destroy
  end

  private

  def inventory_params
    params.require(:inventory).permit(:name, :description, :inventory_id)
  end
end
