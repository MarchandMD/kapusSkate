# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skate.destroy_all
Rink.destroy_all
Skater.destroy_all

50.times do
  Rink.create!(name: Faker::Beer.unique.hop,
               address: Faker::Address.unique.street_address,
               city: Faker::Address.unique.city,
               state: Faker::Address.state_abbr,
               phone: Faker::PhoneNumber.phone_number.to_s)
end

rinks = Rink.all.pluck(:id)


60.times do
  Skater.create!(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number.to_s, email: Faker::Internet.email, skill_level: Faker::Number.number(digits: 1), position: Faker::Sports::Basketball.position, user_name: Faker::Internet.username, last_level: 'college', years: Faker::Number.number(digits: 1), city: Faker::Address.city)
end

skaters = Skater.all.pluck(:name)

20.times do
  Skate.create!(date: Faker::Date.forward(days: 90),
                host: skaters.sample,
                public: true,
                rink_id: rinks.sample)
end

5.times do
  Skate.create!(date: Faker::Date.backward(days: 30),
                host: skaters.sample,
                public: true,
                rink_id: rinks.sample)
end

skates = Skate.all

