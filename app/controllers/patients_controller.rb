class PatientsController < ApplicationController
before_action :authenticate_user

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
  end

  private

  def authenticate_user
    unless current_patient
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end