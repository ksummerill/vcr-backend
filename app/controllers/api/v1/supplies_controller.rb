class Api::V1::SuppliesController < ApplicationController

  def index
    supplies = Supply.all
    render json: supplies
  end

  def create
    supply = Supply.new(supply_params)
    if supply.save
      render json: supply, status: :accepted
    else
      render json: {errors: supply.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    supply = Supply.find(params[:id])
    supply.destroy
  end

  private

  def supply_params
    params.require(:supply).permit(:item, :project_id)
  end
end
