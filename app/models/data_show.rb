class DataShow < ApplicationRecord
  belongs_to :day
  belongs_to :patient

  validates :patient_id, presence: true 
  validates :practionner_id, presence: true 
end
