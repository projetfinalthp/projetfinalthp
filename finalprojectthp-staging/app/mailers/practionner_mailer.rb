class PractionnerMailer < ApplicationMailer
	default from: 'no-reply@finalprojectthp.herokuapp.com'
 
  def welcome_email(practionner)
    @practionner = practionner 
    @url  = 'http://finalprojectthp.herokuapp.com/' 
    mail(to: @practionner.email, subject: 'Bienvenue chez Bipolink !') 

	end

end
