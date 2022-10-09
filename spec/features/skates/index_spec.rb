require 'rails_helper'

RSpec.describe 'Skates#index' do
  it 'shows a message to the user' do
    visit '/skates/'

    expect(page).to have_content('Upcoming skates:')

  end

  it 'has a link to add a skate' do
    visit '/skates/'
    expect(page).to have_link('Add a skate')
  end

  it 'takes the user to /skates/new if clicking add a skate' do
    visit '/skates'
    click_link 'Add a skate'
    expect(page).to have_current_path('/skates/new')
  end
end