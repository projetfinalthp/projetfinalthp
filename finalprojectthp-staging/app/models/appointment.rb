class Appointment < ApplicationRecord
  belongs_to :practionner
  belongs_to :patient

  after_create :patient_send_email, :practionner_send_email

  def patient_send_email
  	AppointmentMailer.patient_email(self).deliver_now
  end

  def practionner_send_email
  	AppointmentMailer.practionner_email(self).deliver_now
  end

end
