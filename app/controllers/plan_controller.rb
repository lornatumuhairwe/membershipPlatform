class PlanController < ApplicationController
  def members
    plan = Plan.find(params[:id])
    render json: plan.members
  end
end
