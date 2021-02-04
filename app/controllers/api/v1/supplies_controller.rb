class Api::V1::SuppliesController < ApplicationController

  def index
    supplies = Supply.all

    render json: SupplySerializer.new(supplies)
  end

  private

  def supply_params
    params.require(:supply).permit(:item, :project_id)
  end
end
