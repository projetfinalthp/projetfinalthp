class AvatarsPatientController < ApplicationController

	def create
    @patient = Patient.find(params[:patient_id])
    @patient.avatar.purge
    @patient.avatar.attach(params[:avatar])
    redirect_to(patient_path(@patient))
 	end
end
