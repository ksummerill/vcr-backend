class Api::V1::InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all

    render json: @inventories
  end

  private

  def inventory_params
    params.require(:inventory).permit(:name, :description, :project_plan_id)
  end
end
