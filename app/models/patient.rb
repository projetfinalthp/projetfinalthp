class Patient < ApplicationRecord
  has_many :appointments
  has_many :practionners, through: :appointments
end
