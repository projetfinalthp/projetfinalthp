class Day < ApplicationRecord
  has_many :data_shows
  has_many :patients, through: :data_shows
end
