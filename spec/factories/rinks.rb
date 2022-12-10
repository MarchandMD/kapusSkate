FactoryBot.define do
  factory :rink do
    name { Faker::Address.street_name }
    address { Faker::Address.street_address }
  end
end