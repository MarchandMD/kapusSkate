require 'rails_helper'

RSpec.describe Skater do
  describe 'relationships' do
    it { should have_many(:skater_skates) }
    it { should have_many(:skates).through(:skater_skates) }
  end

  describe 'class methods' do
    before(:each) do
      @skater1 = Skater.create!(name: 'Billy')
      sleep(1)
      @skater2 = Skater.create!(name: 'Susanna')
    end

    describe '::sort_by_creation_date' do
      it 'lists skaters in order of their creation date, descending' do
        skaters = Skater.sort_by_creation_date
        expect(skaters[0]).to eq(@skater2)
        expect(skaters[1]).to eq(@skater1)
      end

    end
  end


  describe 'instance methods' do

  end


end