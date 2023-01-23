require 'rails_helper'

RSpec.describe 'the welcome page' do
  before(:each) do
    @rink = create(:rink)
    @skate = @rink.skates.create!(date: (Time.now + 10.days).to_s.split[0])
    @skate2 = @rink.skates.create!(date: Time.now.to_s.split[0])
    @skate3 = @rink.skates.create!(date: (Time.now + 14.days).to_s.split[0])

    @skater = create(:skater)

    visit root_path
  end

  it 'displays a greeting' do
    expect(page).to have_content('kapusSkate')
  end

  it 'has a link to the Rinks index' do
    click_link('Rinks')
    expect(current_path).to eq('/rinks')
  end

  it 'displays the next upcoming skate' do
    expect(page).to have_content(Skate.next_scheduled_skate)
  end

  it 'displays the next three skates' do
    expect(page).to have_content(@skate2.date.strftime("%A %B %d, %Y"))
    expect(page).to have_content(@skate.date.strftime("%A %B %d, %Y"))
    # expect(page).to have_content(@skate.date.strftime("%A %B %d, %Y"))
  end

  context "creating a new user" do
    it 'has a button to sign up' do
      expect(page).to have_link('Sign up')
    end
  end

  context "as a registered user" do
    describe 'visiting the root path' do
      it 'allows an existing user to log in' do
        click_link "I already have an account"
        expect(current_path).to eq(login_path)

        fill_in "email",	with: @skater.email
        fill_in "password", with: @skater.password

        click_on "Log in"

        expect(current_path).to eq(root_path)

        expect(page).to have_content("Welcome, #{@skater.email}!")
      end
    end
  end
end
