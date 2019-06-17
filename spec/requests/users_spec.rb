require 'rails_helper'

RSpec.describe 'User Requests' do
  describe 'POST /get_api_key' do
    context 'when email is passed' do
      before { post '/get_api_key', params: { email: 'test@test.test'} }

      it 'returns status 201' do
        expect(response).to have_http_status(201)
      end

      it 'returns user' do
        expect(JSON.parse(response.body)['email']).to eq('test@test.test')
      end

      it 'assigns an api key to a user' do
        expect(JSON.parse(response.body)['api_key']).not_to be_nil
      end
    end

    context 'when emails is not passed' do
      it 'returns status 400 error' do
        post '/get_api_key', params: { email: '' }
        expect(response).to have_http_status(400)
      end
    end
  end
end