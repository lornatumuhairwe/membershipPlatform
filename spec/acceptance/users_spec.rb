require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Users' do
  post '/get_api_key' do
    parameter :email, 'User Email'

    example 'Generating an Api Key' do
      do_request(email: 'lorna@test.com')
      expect(status).to eq(201)
    end

    example 'Generating an Api key - errors' do
      do_request
      expect(status).to eq(400)
    end
  end
end
