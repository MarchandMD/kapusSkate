require 'rails_helper'

RSpec.describe 'Skates#index' do

  it 'shows a skate happening in the future' do
    skate = Skate.create!(date: DateTime.now + 7)

    visit "/skates"

    expect(page).to have_content(skate.date.strftime('%a %b %d, %Y'))
  end

  it 'shows a skate that happened in the past' do
    skate = Skate.create!(date: DateTime.now - 8)

    visit "/skates"
    expect(page).to have_content(skate.date.strftime('%a %b %d, %Y'))
  end

  it 'shows an upcoming skate date as a link that takes user to that skate' do
    skate = Skate.create!(date: DateTime.now + 5)

    visit "/skates"

    click_link("#{skate.date.strftime('%a %b %d, %Y')}")

    expect(current_path).to eq("/skates/#{skate.id}")
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
