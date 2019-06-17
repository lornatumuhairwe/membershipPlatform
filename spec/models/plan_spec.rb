require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }

    it 'validates presence of start_date if time limited' do
      expect(Plan.new(category: :time_limited)).to validate_presence_of(:start_date)
    end

    it 'validates presence of end_date if time limited' do
      expect(Plan.new(category: :time_limited)).to validate_presence_of(:end_date)
    end
  end

  describe 'associations' do
    it { should have_many(:members) }
  end
end
