require 'rails_helper'

describe 'Users' do
  describe '#new' do
    feature 'create a new user' do
      it 'creates a new user, and redirects them to their show page' do
        expect(Skater.all.count).to eq(0)

        visit '/skaters/new'
        fill_in "email",	with: "email@email.com"
        fill_in "password",	with: "password"
        click_on 'Sign Up'

        new_skater = Skater.last

        expect(Skater.all.count).to eq(1)

        expect(new_skater.email).to eq('email@email.com')

        expect(new_skater.password).to eq(nil)
        expect(current_path).to eq(root_path)
        expect(page).to have_content("welcome #{new_skater.email}")
      end
    end
  end
end
