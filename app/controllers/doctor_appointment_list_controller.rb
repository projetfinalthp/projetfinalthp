class DoctorAppointmentListController < ApplicationController
before_action :authorize_user

  def show
  	@patient_practionners = Patient.find(params[:id]).practionners
  	@patient_appointments = Patient.find(params[:id]).appointments
  end

  private

  def authorize_user 
    @user = Patient.find(params[:id])
    unless current_patient == @user
      flash[:danger] = "Veuillez vous connecter."
      redirect_to new_patient_session_path
    end
  end

end
