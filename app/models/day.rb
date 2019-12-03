class Day < ApplicationRecord
  has_many :data_shows, dependent: :delete_all
  has_many :patients, through: :data_shows
end
