class Practionner < ApplicationRecord
  has_many :appointments, dependent: :delete_all
  has_many :patients, through: :appointments
end
