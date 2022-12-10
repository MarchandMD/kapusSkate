require 'rails_helper'

RSpec.describe Rink, type: :model do
  before(:each) do
    @rink = create(:rink)
  end

  describe 'relationships' do
    it { should have_many :skates }
  end

  it 'has a name' do
    expect(@rink.name).to be_a String
  end

  it 'has an address' do
    expect(@rink.address).to be_a String
  end



end
