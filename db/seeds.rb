# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Practionner.destroy_all
# Patient.destroy_all
# Appointment.destroy_all
# Day.destroy_all
# DataShow.destroy_all

# 20.times do |practionner|
#   Practionner.create(first_name: "Prénom#{practionner}",last_name: "Nom#{practionner}", 
#     email: "email#{practionner}@example.com", password: "Password#{practionner}")
#   puts "10 praticiens ont été crées"
# end

# 20.times do |patient|
#   Patient.create(first_name: "Prénom#{patient}",last_name: "Nom#{patient}", 
#     email: "email#{patient}@example.com", password: "Password#{patient}")
#   puts "10 patients ont été crées"
# end

# 100.times do |appointment|
#   Appointment.create(date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),lieu: "Lieu#{appointment}", 
#     patient_id: Patient.all.sample.id, practionner_id: Practionner.all.sample.id )
#   puts "10 rendez-vous ont été crées"
# end

# 10.times do |day|
#   Day.create(date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), hours_of_sleep: "Heures de sommeil#{day}",
#     mood: "Humeur#{day}", treatment: "Traitement#{day}")
#   puts "10 jours ont été crées"
# end

# 100.times do |datashow|
#   DataShow.create(patient_id: Patient.all.sample.id, day_id: Day.all.sample.id )
#   puts "10 datashow ont été crées"
# end

# puts "le seed est fait !"


  @victorhugo = Patient.create(first_name: "Victor", last_name: "Hugo", email: "victorhugo@example.com", password: "azerty")

25.times do |data_chart|
  time_count = 1
  count_day = 67
  count = Day.create(date: DateTime.strptime("#{time_count}/14/2009 8:00", "%m/%d/%Y %H:%M"), hours_of_sleep: "#{data_chart}",
    mood: "Humeur#{data_chart}", treatment: "Traitement#{data_chart}")
  DataShow.create(patient_id: @victorhugo.id, day_id: count_day )
  time_count += 1
  count_day =+ 1
end

puts "Patient test for charts created, he will havecharts créé, il aura l'ID numéro 21 lors du premier Seed"









