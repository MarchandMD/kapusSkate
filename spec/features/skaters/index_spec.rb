require 'rails_helper'

describe 'Skaters' do
  describe 'index page' do
    before(:each) do
      visit '/skaters'
    end

    it 'displays all users email address' do
      expect(page).to have_content('email')
    end

    it 'does not display preferred position' do
      expect(page).to_not have_content('preferred position')
    end


  end

end
