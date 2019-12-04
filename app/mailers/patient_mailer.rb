class PatientMailer < ApplicationMailer
	default from: 'no-reply@finalprojectthp.herokuapp.com'
 
  def welcome_email(patient)
  	
    @patient = patient
    @url  = 'http://finalprojectthp.herokuapp.com/' 
    mail(to: @patient.email, subject: 'Bienvenue chez Bipolink !') 
    
	end
end
