# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
20.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::TvShows::GameOfThrones.house, specialty: Faker::Educator.subject)
end

doctor1 = Doctor.find_by(first_name: "Emilia")
patient1 = Patient.find_by(first_name: "Shellie")

my_appoint = Appointment.create(doctor: doctor1, patient: patient1, date: "2021, 07, 30")

puts "la date du rendez-vous est le #{my_appoint.date}" #comment on indique la date ? 
puts "le docteur est #{my_appoint.doctor.first_name}"
puts "le patient est #{my_appoint.patient.first_name}"