# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#tp Patient.all
#tp Doctor.all
#tp Appointment.all
#tp City.all
#tp Specialty.all
#tp PhD.all
 

require 'faker'
ptx = Patient.all
ptx.destroy_all
dcx = Doctor.all
dcx.destroy_all
apx = Appointment.all
apx.destroy_all
ctx = City.all
ctx.destroy_all
spx = Specialty.all
spx.destroy_all
phx = PhD.all
phx.destroy_all
 
 
12.times do
 city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
 
100.times do
 doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
 
100.times do
 patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

32.times do
 specialty = Specialty.create!(type_of_specialty: Faker::Lorem.word)
end
 
cty1 = City.first.id
cty2 = City.last.id
doc1 = Doctor.first.id
doc2 = Doctor.last.id
pat1 = Patient.first.id
pat2 = Patient.last.id
spc1 = Specialty.first.id
spc2 = Specialty.last.id

90.times do
doc_rand = rand(doc1..doc2)
pat_rand = rand(pat1..pat2)
 doc = Doctor.find(doc_rand)
 pat = Patient.find(pat_rand)
 appointment = Appointment.create!(doctor: doc, patient: pat, date: Faker::Date.in_date_period)
end
app1 = Appointment.first.id
app2 = Appointment.last.id
x = 0
z = app1
loop do
  if x < 100
    city_rand = rand(cty1..cty2)
    city_to_add = City.find(city_rand)
    doc_to_add = doc1 + x
    doc = Doctor.find(doc_to_add)
    pat_to_add = pat1 + x
    pat = Patient.find(pat_to_add)
    if z < app2
      app_rand = z + 1
      ap = Appointment.find(app_rand)
      doc.update(city: city_to_add)
      pat.update(city: city_to_add)
      ap.update(city: city_to_add)
      z = z + 1
    else
      doc.update(city: city_to_add)
      pat.update(city: city_to_add)
    end
    x = x + 1
    puts "City #{x}".green
  else
    break
  end
end
x = 1
loop do
 if x <= 100
   sp_rand = rand(spc1..spc2)
   doc_to_find = doc1 + x - 1
   doc = Doctor.find(doc_to_find)
   sp = Specialty.find(sp_rand)
   ph_d = PhD.create!(doctor: doc, specialty: sp)
   puts "PhD #{x}".blue
   x = x + 1
 else
  break
 end
end
 


