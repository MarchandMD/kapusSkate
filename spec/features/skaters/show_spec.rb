require 'rails_helper'

RSpec.describe 'Skaters' do
  before(:each) do
    @skater1 = create(:skater)
    sleep(1)
    @skater2 = create(:skater)
  end

  describe '#show action' do
    xit 'displays skaters by creation date, in descending order' do
      visit skaters_path

      expect(@skater2.name).to appear_before(@skater1.name)
    end

    xit 'can search for a skater, exact match' do
      visit '/skaters/'
      fill_in 'skater[search_term]',	with: 'billy'
      expect(page).to have_button('search')
      click_button('search')
      expect(current_path).to eq("/skaters")
      expect(page).to have_content('billy')
      expect(page).not_to have_content('suzie')
    end

    it 'can search for a skater, partial match'
  end
end
