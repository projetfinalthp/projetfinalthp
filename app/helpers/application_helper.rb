module ApplicationHelper

	def resource_avatar
		if resource.avatar.attached?
			resource.avatar
		else
			gravatar_image_url(resource.email)
		end
	end

	def current_practionner_avatar(current_practionner)
		if current_practionner.avatar.attached?
			current_practionner.avatar
		else
			gravatar_image_url(current_practionner.email)
		end
	end

	def current_patient_avatar(current_patient)
		if current_patient.avatar.attached?
			current_patient.avatar
		else
			gravatar_image_url(current_patient.email)
		end
	end

end
