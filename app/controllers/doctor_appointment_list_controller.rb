class DoctorAppointmentListController < ApplicationController
before_action :authenticate_user

  def show
  	@patient_practionners = Patient.find(params[:id]).practionners
  	@patient_appointments = Patient.find(params[:id]).appointments
  end

  private

  def authenticate_user
    unless current_patient
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end