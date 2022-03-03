# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skater.destroy_all

40.times do |index|
  Skater.create!(name: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email)
end

p "Created #{Skater.count} skaters"
