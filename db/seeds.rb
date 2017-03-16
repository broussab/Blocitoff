# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create!(
    firstname: Faker::RockBand.name,
    lastname: Faker::Pokemon.name,
    username: Faker::Internet.user_name,
    email:  Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end
users = User.all

30.times do
  Item.create!(
    user: users.sample,
    name: Faker::ChuckNorris.fact
  )
end

puts 'Seed finished'
puts "#{User.count} users created"
puts "#{Item.count} items created"
