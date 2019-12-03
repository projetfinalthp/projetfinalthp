# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Practionner.destroy_all
Patient.destroy_all
Appointment.destroy_all

10.times do |practionner|
  Practionner.create(first_name: "Prénom#{practionner}",last_name: "Nom#{practionner}")
  puts "10 praticiens ont été crées"
end

10.times do |patient|
  Patient.create(first_name: "Prénom#{patient}",last_name: "Nom#{patient}")
  puts "10 patients ont été crées"
end


10.times do |appointment|
  Appointment.create(date: "Date#{appointment}",lieu: "Lieu#{appointment}", 
  	patient_id: Patient.all.sample.id, practionner_id: Practionner.all.sample.id )
  puts "10 rendez-vous ont été crées"
end