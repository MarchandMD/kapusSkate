FactoryBot.define do
  factory :skater do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
