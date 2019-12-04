class PatientMailer < ApplicationMailer
	default from: 'no-reply@finalprojectthp.herokuapp.com'
 
  def welcome_email(patient)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @patient = patient

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://finalprojectthp.herokuapp.com/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @patient.email, subject: 'Bienvenue chez Bipolink !') 
    
	end
end
