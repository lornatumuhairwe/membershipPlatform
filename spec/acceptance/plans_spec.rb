require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Plans' do
  let(:plan1) { create(:plan) }
  let(:plan2) { create :plan, :time_limited }
  let!(:plan1_members) { create_list :member, 5, plan: plan1 }
  let!(:plan2_members) { create_list :member, 2, plan: plan2 }
  let(:user) { create :user }
  header 'Authorization', :api_key

  get '/plan/:id/members' do
    let(:id) { plan1.id }

    context 'With api key' do
      let(:api_key) { "Token token=#{user.api_key}" }

      example 'Fetches members of the plan' do
        do_request
        expect(status).to eq(200)
      end
    end

    context 'Without api key' do
      example 'Fetches members of the plan - errors' do
        do_request
        expect(status).to eq(401)
      end
    end
  end
end
