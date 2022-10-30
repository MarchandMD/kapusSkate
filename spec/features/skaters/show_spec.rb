require 'rails_helper'

RSpec.describe 'Skaters' do
  before(:each) do
    @skater1 = Skater.create!(name: 'billy')
    sleep(1)
    @skater2 = Skater.create!(name: 'suzie')
  end

  describe "#show action" do
    it 'displays skaters by creation date, in descending order' do
      visit '/skaters'

      expect(@skater2.name).to appear_before(@skater1.name)
    end

    it 'can search for a skater, exact match'

    it 'can search for a skater, partial match'
  end

end
