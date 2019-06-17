require 'rails_helper'

RSpec.describe 'plans requests', type: :request do
  let(:plan1) { create(:plan) }
  let(:plan2) { create :plan, :time_limited }
  let!(:plan1_members) { create_list :member, 5, plan: plan1}
  let!(:plan2_members) { create_list :member, 2, plan: plan2}

  describe 'GET /plan/:id/members' do
    before { get "/plan/#{plan1.id}/members" }
    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns members of plan1' do
      expect(JSON.parse(response.body).size).to eq(5)
    end
  end
end
