require 'rails_helper'

describe 'Skaters#login' do
  it 'cannot log in with bad credentials' do
    rink_id = create(:rink).id
    create(:skate, rink_id: rink_id)
    skater = create(:skater, password: 'test')

    visit login_path

    fill_in "email",	with: skater.email
    fill_in "password", with: "incorrect password"

    click_on "Log in"

    expect(current_path).to eq(login_path)

    expect(page).to have_content("Wrong password")
  end
end
