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
end
