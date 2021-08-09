# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#tp Dogsitter.all
#tp Dog.all
#tp Stroll.all
#tp City.all



require 'faker'


dsx = Dogsitter.all
dsx.destroy_all
dgx = Dog.all
dgx.destroy_all
stx = Stroll.all
stx.destroy_all
ctx = City.all
ctx.destroy_all
puts "It has been cleaned my liege.".red
 
12.times do
 city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

100.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do
 dogs = Dog.create!(name: Faker::Name.first_name)
end
 

 
cty1 = City.first.id
cty2 = City.last.id
dst1 = Dogsitter.first.id
dst2 = Dogsitter.last.id
dg1 = Dog.first.id
dg2 = Dog.last.id


90.times do
dst_rand = rand(dst1..dst2)
dg_rand = rand(dg1..dg2)
 dst = Dogsitter.find(dst_rand)
 dg = Dog.find(dg_rand)
 stroll = Stroll.create!(dogsitter: dst, dog: dg, date: Faker::Date.in_date_period)
end

stl1 = Stroll.first.id
stl2 = Stroll.last.id
x = 0
z = stl1
loop do
  if x < 100
    city_rand = rand(cty1..cty2)
    city_to_add = City.find(city_rand)
    dst_to_add = dst1 + x
    dst = Dogsitter.find(dst_to_add)
    dg_to_add = dg1 + x
    dg = Dog.find(dg_to_add)
    if z < stl2
      stl_rand = z + 1
      stl = Stroll.find(stl_rand)
      dst.update(city: city_to_add)
      dg.update(city: city_to_add)
      stl.update(city: city_to_add)
      z = z + 1
    else
      dst.update(city: city_to_add)
      dg.update(city: city_to_add)
    end
    x = x + 1
    puts "City #{x}".green
  else
    break
  end
end

 


