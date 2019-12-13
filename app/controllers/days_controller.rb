class DaysController < ApplicationController

	def new
		@day = Day.new
	end

	def create
		@day = Day.new(mood: params[:mood], hours_of_sleep: params[:hours_of_sleep])
		if @day.save
		redirect_to patient_path(current_patient.id)
		else
		redirect_to root_path
		end
	end
end
