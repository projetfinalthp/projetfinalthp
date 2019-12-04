class Day < ApplicationRecord
  has_many :data_shows, dependent: :delete_all #erreur de violation de foreign key, cette ligne permet de créer le seed sans encombre 
  has_many :patients, through: :data_shows
end
