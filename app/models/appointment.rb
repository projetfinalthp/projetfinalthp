class Appointment < ApplicationRecord
  belongs_to :practionner
  belongs_to :patient
  validates :date, presence: true
  validates :place, presence: true 
end
