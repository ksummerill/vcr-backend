class Api::V1::ProjectPlansController < ApplicationController

  def index
      project_plans = ProjectPlan.all

      render json: ProjectPlanSerializer.new(project_plans)
    end

    def create
      # raise params.inspect
      project_plan = ProjectPlan.new(project_plan_params)
      if project_plan.save
        render json: ProjectPlanSerializer.new(project_plans), status: :accepted
      else
        render json: {errors: project_plan.errors.full_messages}, status: :unprocessible_entity
      end
    end

    private

    def project_plan_params
      # byebug
      params.require(:project_plan).permit(:name)
    end

end
