class Api::V1::VotesController < ApplicationController

  before_action :find_project

  def index
    votes = Vote.all
    render json: votes
  end

  def create
    @vote = @project.votes.new(vote_params)
    if @vote.save
      render json: @project, status: :accepted
    else
      render json: {errors: @vote.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def vote_params
    params.permit(:vote)
  end
end
