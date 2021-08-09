# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ctx = City.all
ctx.destroy_all
usr = User.all
usr.destroy_all
gsp = Gossip.all
gsp.destroy_all


3.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: rand(18..75))
end

10.times do
  gossip = Gossip.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraphs)
end

gossip_all = Gossip.all
gossip_all.each do |value|
  usr_rand = rand(User.first.id..User.last.id)
  value.update(user_id: usr_rand)
  value.save
end

user_all = User.all
user_all.each do |value|
  cty_rand = rand(City.first.id..City.last.id)
  value.update(city_id: cty_rand)
  value.save
end
