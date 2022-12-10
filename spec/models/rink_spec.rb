require 'rails_helper'

RSpec.describe Rink, type: :model do
  describe 'relationships' do
    it { should have_many :skates }
  end

  subject do
    described_class.new(name: 'Apex',
                        address: '123 Main St')
  end

  xit 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  xit 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  xit 'is not valid without a address' do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  xit 'is not valid without a city' do
    subject.city = nil
    expect(subject).to_not be_valid
  end

  xit 'is not valid without a state' do
    subject.state = nil
    expect(subject).to_not be_valid
  end

  xit 'is not valid without a phone' do
    subject.phone = nil
    expect(subject).to_not be_valid
  end
end
