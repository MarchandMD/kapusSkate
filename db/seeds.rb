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
               address: Faker::Address.unique.street_address)
end

rinks = Rink.all.pluck(:id)

60.times do
  Skater.create!(email: Faker::Internet.email,
                 password: Faker::Internet.password)
end

20.times do
  Skate.create!(date: Faker::Date.forward(days: 90),
                rink_id: rinks.sample)
end

5.times do
  Skate.create!(date: Faker::Date.backward(days: 30),
                rink_id: rinks.sample)
end
