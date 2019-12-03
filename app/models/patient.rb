class Patient < ApplicationRecord
  has_many :appointments, dependent: :delete_all
  has_many :practionners, through: :appointments

  has_many :data_shows, dependent: :delete_all
  has_many :days, through: :data_shows
end
