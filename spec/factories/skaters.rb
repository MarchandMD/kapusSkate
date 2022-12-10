FactoryBot.define do
  factory :skater do
    name { Faker::Movies::BackToTheFuture.character }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end