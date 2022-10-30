require 'rails_helper'

RSpec.describe Skate do
  describe 'relationships' do
    it { should belong_to(:rink) }
    it { should have_many(:skater_skates) }
    it { should have_many(:skaters).through(:skater_skates) }
  end

  describe 'class methods' do
    before(:each) do
      # nothing needed at this moment
    end

    describe '#next_scheduled_skate' do
      it 'returns the next skate if it exists' do
        rink1 = Rink.create!(name: 'whatever')
        rink1.skates.create!(date: '2022-10-31')
        expect(Skate.next_scheduled_skate).to eq('2022-10-31')
      end

      it 'returns nil if no future skate exists' do
        rink1 = Rink.create!(name: 'whatever')
        rink1.skates.create!(date: '2022-10-19')
        expect(Skate.next_scheduled_skate).to eq(nil)
      end
    end
  end

  describe 'instance methods' do
  end
end
