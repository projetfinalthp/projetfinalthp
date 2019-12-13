class PatientMailer < ApplicationMailer
  default from: 'contact@finalprojectthp-staging.herokuapp.com'
 
  def welcome_email(user)
    #we keep user to use it in the view 
    @user = user 

    #we define a variable url to use it in the view
    @url  = 'https://finalprojectthp-staging.herokuapp.com' 

    #It is this function that allows us to send the email by defining the email recipient and subject
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end