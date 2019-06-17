class PlanController < ApplicationController
  def members
    plan = Plan.find(params[:id])
    render json: plan.members

  rescue ActiveRecord::RecordNotFound
    render json: 'Plan not found', status: 404
  end
end
