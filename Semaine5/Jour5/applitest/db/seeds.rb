# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

User.destroy_all
User.reset_pk_sequence

City.destroy_all
City.reset_pk_sequence

Listing.destroy_all
Listing.reset_pk_sequence

Reservation.destroy_all
Reservation.reset_pk_sequence

def phone_num
  return "0#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
end


def zip_code
  zip = ""
  5.times do
    zip += "#{rand(1..9)}"
  end
  return zip
end


10.times do |i|
  a_city = City.create(name:Faker::Address.city, zip_code: zip_code())
  if i == 0
    puts "City créé:"
    print "|X"
  elsif i == 9
    puts "X|"
    puts "Done!"
    puts ""
  else
    print "X"
  end
end

20.times do |i|
  a_user = User.create(description:Faker::Lorem.sentence(word_count: 5),email:Faker::Internet.email,phone_number:phone_num())

  if i == 0
    puts "User créé:"
    print "|X"
  elsif i.even?
    print "X"
  elsif i == 19
    puts "X|"
    puts "Done!"
    puts ""
  end
end
charging_bar=""

50.times do |i|
  a_listing = Listing.create(welcome_message:Faker::Lorem.sentence(word_count: 1),city_id:rand(1..10),administrator_id:rand(1..20),has_wifi:true,available_beds:rand(1..10),price:rand(1..10),description:Faker::Lorem.sentence(word_count: 145))
  
  if i == 0
    puts "Listing créé:"
    print "|X"
  elsif i%5 == 0
    print "X"
  elsif i == 49
    puts "X|"
    puts "Done!"
    puts ""
  end
end
charging_bar=""

100.times do |i|
  j=rand(1..28)
  start_time = DateTime.new(2021, 8, j, 10, 35, 0)
  end_time = DateTime.new(2021, 8, j+2, 10, 35, 0)
  a_reservation = Reservation.create(start_date: start_time, end_date: end_time, guest_id:rand(1..20),listing_id:1)

  if i == 0
    puts "Reservation créé:"
    print "|X"
  elsif i%10 == 0
    print "X"
  elsif i == 99
    puts "X|"
    puts "Done!"
    puts ""
  end
end