# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rink.destroy_all
Skate.destroy_all
Skater.destroy_all

rink = Rink.create!(name: Faker::Beer.unique.hop,
                    address: Faker::Address.unique.street_address,
                    city: Faker::Address.unique.city,
                    state: Faker::Address.unique.state_abbr,
                    phone: Faker::PhoneNumber.phone_number.to_s)

Skate.create!(date: '2022-10-30',
              total_skaters: 10,
              host: 'michael',
              public: true,
              rink_id: rink.id)
