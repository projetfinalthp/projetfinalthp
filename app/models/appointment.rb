class Appointment < ApplicationRecord
  belongs_to :practionner
  belongs_to :patient
end
