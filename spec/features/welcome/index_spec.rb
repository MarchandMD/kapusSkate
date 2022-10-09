require 'rails_helper'

RSpec.describe 'the welcome index page' do
  it 'displays a greeting' do
    visit '/'

    expect(page).to have_content("Kapus Skate")
  end
end