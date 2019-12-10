class AvatarsPractionnerController < ApplicationController
	def create
    @practionner = Practionner.find(params[:practionner_id])
    @practionner.avatar.attach(params[:avatar])
    redirect_to(practionners_path(@practionner))
  	end
end
