require 'rails_helper'

RSpec.describe "Rinks" do
  it 'lists the rinks' do
    rink = create(:rink)

    visit "/rinks"

    expect(page).to have_content(rink.name)
  end
end
