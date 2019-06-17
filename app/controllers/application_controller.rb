class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate

  def authenticate
    authenticate_api_key || render_unauthorized
  end

  private

  def authenticate_api_key
    authenticate_or_request_with_http_token do |token, other_options|
      User.find_by_api_key(token)
    end
  end

  def render_unauthorized(realm='Application')
    self.headers['WWW-Authenticate'] = %(Token realm="#{realm}")
    render json: 'Bad credentials', status: 401
  end
end
