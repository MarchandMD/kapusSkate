require 'rails_helper'

RSpec.describe Skate do
  describe 'relationships' do
    it { should belong_to(:rink) }
    it { should have_many(:skater_skates) }
    it { should have_many(:skaters).through(:skater_skates) }
  end

  describe 'class methods' do
    before(:each) do
      @rink = Rink.create!(name: 'HockeyRink')
      @rink.skates.create!(date: Time.now.to_s.split[0])
      @rink.skates.create!(date: (Time.now + 10.days).to_s.split[0])
      @rink.skates.create!(date: (Time.now + 14.days).to_s.split[0])
      @rink.skates.create!(date: (Time.now - 14.days).to_s.split[0])
    end

    describe '::next_scheduled_skate' do
      it 'returns the next skate if it exists' do
        rink1 = Rink.create!(name: 'whatever')
        rink1.skates.create!(date: (Time.now + 1.days))
        expect(Skate.next_scheduled_skate).to eq((Time.now).strftime('%A %B %d, %Y'))
      end

      it 'returns nil if no future skate exists' do
        Skate.destroy_all
        rink1 = Rink.create!(name: 'whatever')
        rink1.skates.create!(date: '2022-10-19')
        expect(Skate.next_scheduled_skate).to eq(nil)
      end
    end

    describe '::next_three_skates' do
      it 'retrieves three skates' do
        expect(@rink.skates.count).to eq(4)
        next_three = Skate.next_three_skates
        expect(next_three.count).to eq(3)
        expect(next_three[0].date.strftime('%A %B %d, %Y')).to eq(Time.now.strftime('%A %B %d, %Y'))
        expect(next_three[1].date.strftime('%A %B %d, %Y')).to eq((Time.now + 10.days).strftime('%A %B %d, %Y'))
        expect(next_three[2].date.strftime('%A %B %d, %Y')).to eq((Time.now + 14.days).strftime('%A %B %d, %Y'))
      end
    end
  end

  describe 'instance methods' do
  end
end
