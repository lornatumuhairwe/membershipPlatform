class UsersController < ApplicationController
  def get_api_key
    user = User.create!(user_params)
    render json: user, status: :created

  rescue ActiveRecord::RecordInvalid => invalid
    render json: invalid.record.errors, status: 400
  end

  private

  def user_params
    params.permit(:email)
  end
end
