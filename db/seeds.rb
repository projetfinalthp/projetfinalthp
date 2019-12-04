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
Day.destroy_all
DataShow.destroy_all

10.times do |practionner|
  Practionner.create(first_name: "Prénom#{practionner}",last_name: "Nom#{practionner}", 
  	email: "email#{practionner}@example.com", password: "Password#{practionner}")
  puts "10 praticiens ont été crées"
end

10.times do |patient|
  Patient.create(first_name: "Prénom#{patient}",last_name: "Nom#{patient}", 
  	email: "email#{patient}@example.com", password: "Password#{patient}")
  puts "10 patients ont été crées"
end

10.times do |appointment|
  Appointment.create(date: "Date#{appointment}",lieu: "Lieu#{appointment}", 
  	patient_id: Patient.all.sample.id, practionner_id: Practionner.all.sample.id )
  puts "10 rendez-vous ont été crées"
end

10.times do |day|
  Day.create(date: "Date#{day}", hours_of_sleep: "Heures de sommeil#{day}",
  	mood: "Humeur#{day}", treatment: "Traitement#{day}")
  puts "10 jours ont été crées"
end

10.times do |datashow|
  DataShow.create(patient_id: Patient.all.sample.id, day_id: Day.all.sample.id )
  puts "10 datashow ont été crées"
end

puts "le seed est fait !"

