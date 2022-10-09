require 'rails_helper'

RSpec.describe "Rinks" do
  it 'lists the rinks' do
    rink = Rink.create!(name: Faker::Beer.unique.hop,
                        address: Faker::Address.unique.street_address,
                        city: Faker::Address.unique.city,
                        state: Faker::Address.unique.state_abbr,
                        phone: Faker::PhoneNumber.phone_number.to_s)

    visit "/rinks"

    expect(page).to have_content(rink.name)
  end
end
