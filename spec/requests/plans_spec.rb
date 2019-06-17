require 'rails_helper'

RSpec.describe 'plans requests', type: :request do
  let(:plan1) { create(:plan) }
  let(:plan_id) { plan1.id }
  let(:plan2) { create :plan, :time_limited }
  let!(:plan1_members) { create_list :member, 5, plan: plan1}
  let!(:plan2_members) { create_list :member, 2, plan: plan2}

  describe 'GET /plan/:id/members' do
    before { get "/plan/#{plan_id}/members" }
    context 'when plan exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns members of plan1' do
        expect(JSON.parse(response.body).size).to eq(5)
      end
    end

    context 'when plan does not exist' do
      let(:plan_id) { 0 }

      it 'should return status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
