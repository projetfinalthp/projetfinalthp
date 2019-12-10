class DoctorAppointmentListController < ApplicationController
  def show
  	@patient_practionners = Patient.find(params[:id]).practionners
    @patient_appointments = Patient.find(params[:id]).appointments
  end
end
