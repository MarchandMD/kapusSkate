require 'rails_helper'

RSpec.describe 'New Rinks' do

  it 'has a link to the page' do
    visit "/rinks"
    expect(page).to have_content("Add Rink")
    click_link("Add Rink")
    expect(current_path).to eq("/rinks/new")
  end

  it 'can create a new rink' do
    visit '/rinks/new'
    fill_in "Name",	with: "SportStable"
    click_button('Add Rink')
    expect(current_path).to eq('/rinks')
    expect(page).to have_content('SportStable')
  end

end
