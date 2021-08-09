# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#Rake::Task['db:reset'].invoke
#rails db:reset

4.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

15.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: rand(18..75), city_id: rand(City.first.id..City.last.id), password: Faker::Lorem.characters(number: 12, min_alpha: 4, min_numeric: 2))
end

10.times do
  gossip = Gossip.create!(title: Faker::Lorem.characters(number: 10), content: Faker::Lorem.paragraphs)
end

50.times do
  comment = Comment.create!(content: Faker::Lorem.paragraphs, gossip_id: rand(Gossip.first.id..Gossip.last.id), user_id: rand(User.first.id..User.last.id))
end


gossip_all = Gossip.all
gossip_all.each do |value|
  usr_rand = rand(User.first.id..User.last.id)
  value.update(user_id: usr_rand)
  value.save
end
