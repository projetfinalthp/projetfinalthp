class Patient < ApplicationRecord
  has_many :appointments
  has_many :practionners, through: :appointments

  has_many :data_shows
  has_many :days, through: :data_shows
end
