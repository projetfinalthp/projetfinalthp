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

20.times do |practionner|
  Practionner.create(first_name: "Prénom#{practionner}",last_name: "Nom#{practionner}", 
    email: "email#{practionner}@example.com", password: "Password#{practionner}", 
    sexe: "Sexe#{practionner}", specialty:"Spécialité#{practionner}", adress: "Adresse#{practionner}", 
    diploma: "Diplômes#{practionner}", certifications: "Autres certifications#{practionner}")
end
puts "20 praticiens ont été crées"

20.times do |patient|
  Patient.create(first_name: "Prénom#{patient}",last_name: "Nom#{patient}", 
    email: "email#{patient}@example.com", password: "Password#{patient}", 
    treatment: "Traitement#{patient}", city: "Ville#{patient}", sexe: "Sexe#{patient}",
    birth: DateTime.strptime("09/14/1992 10:00", "%m/%d/%Y %H:%M"))
end
puts "20 patients ont été crées"

100.times do |appointment|
  Appointment.create(date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),lieu: "Lieu#{appointment}", 
    patient_id: Patient.all.sample.id, practionner_id: Practionner.all.sample.id )
end
puts "100 rendez-vous ont été crées"

10.times do |day|
  Day.create(date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), hours_of_sleep: "Heures de sommeil#{day}",
    mood: "Humeur#{day}", treatment: "Traitement#{day}")
end
puts "10 jours ont été crées"

100.times do |datashow|
  DataShow.create(patient_id: Patient.all.sample.id, day_id: Day.all.sample.id )
end
puts "100 datashow ont été crées"

puts "le seed est fait !"

