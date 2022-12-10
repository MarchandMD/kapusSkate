FactoryBot.define do
  factory :rink do
    name { Faker::Address.street_name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    phone { Faker::PhoneNumber.cell_phone }
  end
end