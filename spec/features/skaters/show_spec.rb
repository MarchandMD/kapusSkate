require 'rails_helper'

RSpec.describe 'Skaters' do
  before(:each) do
    @skater1 = create(:skater)
    sleep(1)
    @skater2 = create(:skater)
  end

  
end
