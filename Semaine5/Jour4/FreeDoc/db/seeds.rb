# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Doctor.reset_pk_sequence

Patient.destroy_all
Patient.reset_pk_sequence

Appointment.destroy_all
Appointment.reset_pk_sequence

City.destroy_all
City.reset_pk_sequence

JoinDoctorSpecialty.destroy_all
JoinDoctorSpecialty.reset_pk_sequence

Specialty.destroy_all
Specialty.reset_pk_sequence



20.times do |i|
  a_city = City.create(name: Faker::Address.city)
  puts "City #{i+1} crée!"
end

100.times do |i|
  a_doctor = Doctor.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, zip_code:Faker::Address.zip_code, city_id: rand(1..20))
  a_patient = Patient.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, city_id: rand(1..20))
  puts "Patient,Doctor #{i+1} crée!"
end

["OBGYN","Generalist","Oncologist","ENT"].each do |n|
  a_specialty = Specialty.create(name:n)
end

100.times do |i|
  a_join_doctor_specialties = JoinDoctorSpecialty.create(specialty_id:rand(1..4), doctor_id:rand(1..100))  
end

100.times do |i|
  a_appointment = Appointment.create(date: Faker::Date.in_date_period, doctor_id: rand(1..100), patient_id: rand(1..100), city_id: rand(1..20))
  puts "Appointment #{i+1} crée!"
end