class PatientsController < ApplicationController
before_action :authorize_user

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
  end

  private

  def authorize_user 
    @user = Patient.find(session[:id])
    unless current_patient == @user
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end

