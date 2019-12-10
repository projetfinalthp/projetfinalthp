class ApplicationController < ActionController::Base
	before_action :configure_devise_parameters, if: :devise_controller?

		 protected
     def after_sign_in_path_for(ressource)
     if current_patient
         patient_path(ressource)
     else current_practionner
         practionner_path(ressource)
     end
	 	 end
     def configure_devise_parameters
       devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
       devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
     end
 end
