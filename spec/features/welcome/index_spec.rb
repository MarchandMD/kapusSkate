require 'rails_helper'

RSpec.describe 'the welcome page' do
  before(:each) do
    @rink = Rink.create!(name: 'hockeyrink')
    @skate = @rink.skates.create!(date: Time.now.to_s.split[0])
  end
  it 'displays a greeting' do
    visit '/'
    expect(page).to have_content('Kapus Skate')
  end

  it 'has a link to the Rinks index' do
    visit '/'
    click_link('Rinks')
    expect(current_path).to eq('/rinks')
  end

  it 'displays the next upcoming skate' do
    visit '/'
    expect(page).to have_content(Skate.next_scheduled_skate)
  end

  it 'allows a skater to add themselves' do
    visit '/'
    fill_in "skater[name]",	with: 'Foo Bar'
    fill_in "phone",	with: "720-123-4567"
    fill_in "email",	with: "email@email.com"
    fill_in "skill_level",	with: "4"
    fill_in "position",	with: "forward"
    fill_in "user_name",	with: "bingo87"
    fill_in "city",	with: "Arvada"
    fill_in "last_level",	with: "college"
    fill_in "years",	with: "5"
    expect(page).to have_button('Sign Up')
    click_button('Sign Up')
    expect(current_path).to eq('/skaters')
  end
end
