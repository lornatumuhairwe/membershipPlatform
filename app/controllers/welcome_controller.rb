require 'rails/application_controller'

class WelcomeController < Rails::ApplicationController
  layout false

  def index
    render file: Rails.root.join('public', 'index.html')
  end
end
