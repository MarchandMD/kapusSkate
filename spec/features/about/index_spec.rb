require 'rails_helper'

RSpec.describe 'the About#index page' do
  it 'shows a message to the user' do
    visit about_index_path

    expect(page).to have_content("Some history of the Kapus Skate")
  end
end