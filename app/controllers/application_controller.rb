class ApplicationController < ActionController::Base
	
	protected

	def after_sign_in_path_for(ressource)
  	if current_patient
  		patient_path(ressource)
  	else current_practionner
  		practionner_path(ressource)
  	end
	end
end
