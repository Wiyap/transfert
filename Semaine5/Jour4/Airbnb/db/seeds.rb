# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
City.reset_pk_sequence

Dog.destroy_all
Dog.reset_pk_sequence

Dogsitter.destroy_all
Dogsitter.reset_pk_sequence

Stroll.destroy_all
Stroll.reset_pk_sequence

20.times do |i|
  a_city = City.create(name: Faker::Address.city)  
  puts "Ville #{i+1} créée!"
end

100.times do |i|
  a_dog = Dog.create(name: Faker::Games::Pokemon.name, city_id: rand(1..20))
  a_dogsitter = Dogsitter.create(name: Faker::Name.name, city_id: rand(1..20))
  puts "#{i+1} Dog et Dogsitter créé!"
end

100.times do |i|
  a_stroll = Stroll.create(stroll: Faker::Date.in_date_period, dogsitter_id: rand(1..100), city_id: rand(1..20))
  puts "#{i+1} stroll créé!"
end

100.times do |i|
  a_join_dog_stroll = JoinDogStroll.create(dog_id:rand(1..100),stroll_id:rand(1..100))
  puts "#{i+1} join_dog_stroll"