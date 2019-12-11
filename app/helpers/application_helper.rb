module ApplicationHelper

	def resource_avatar
		if resource.avatar.attached?
			resource.avatar
		else
			gravatar_image_url(resource.email)
		end
	end

end
