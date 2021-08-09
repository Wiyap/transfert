# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dog1 = Dog.create(race: "berger Allemand")
dogsitter1 = Dogsitter.create(first_name: "Bruno")
first_stroll = Stroll.create(dog: dog1, dogsitter: dogsitter1)

#puts "la date du rendez-vous est le #{first_stroll.date}" #comment on indique la date ? 
puts "le chien est un #{first_stroll.dog.race}"
puts "le dogsitter est #{first_stroll.dogsitter.first_name}"

city1 = City.create(city: "Paris")
dog1.update(city_id: 2)