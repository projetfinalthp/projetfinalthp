class Day < ApplicationRecord
  has_many :data_shows, dependent: :delete_all #This line enable to create a seed without problem
  has_many :patients, through: :data_shows
end
