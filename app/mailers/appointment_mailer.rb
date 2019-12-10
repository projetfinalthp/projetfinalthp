class AppointmentMailer < ApplicationMailer
  default from: 'contact@finalprojectthp-staging.herokuapp.com'

	def patient_email(appointment)
	@appointment = appointment
	@patient = Patient.find(appointment.patient_id)
	@practionner = Practionner.find(appointment.practionner_id)
	@url  = 'https://finalprojectthp-staging.herokuapp.com' 
    mail(to: @patient.email, subject: 'Votre rendez-vous sur Bipolink') 
	end

	def practionner_email(appointment)
	@appointment = appointment
	@practionner = Practionner.find(appointment.practionner_id)
	@patient = Patient.find(appointment.patient_id)
	@url  = 'https://finalprojectthp-staging.herokuapp.com' 
    mail(to: @practionner.email, subject: 'Votre rendez-vous sur Bipolink') 
	end

end