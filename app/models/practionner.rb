class Practionner < ApplicationRecord
  has_many :appointments, dependent: :delete_all #erreur de violation de foreign key, cette ligne permet de créer le seed sans encombre 
  has_many :patients, through: :appointments
end
