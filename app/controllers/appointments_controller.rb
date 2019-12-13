class AppointmentsController < ApplicationController
	def new
		@appointment = Appointment.new
	end

	def create
		@appointment = Appointment.new(date: params[:date], place: params[:place], patient_id: params[:patient_id], practionner_id: params[:practionner_id])
		if @appointment.save
		redirect_to doctor_appointment_list_path(current_patient.id)
		else
		redirect_to root_path

		end
	end
end
