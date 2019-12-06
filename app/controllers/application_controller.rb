class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
  	patient_path(resource) || patient_path
	end
end
