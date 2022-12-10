FactoryBot.define do
  factory :skate do
    date { Faker::Date.forward(days: 1) }
    rink_id { Faker::Number.number(digits: 1) }
  end
end