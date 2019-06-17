require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
  end

  describe '#assign_api_key' do
    it 'assigns api_key to user on create' do
      user = User.create(email: 'test@test.test')
      expect(user.api_key).not_to be_nil
    end
  end
end
