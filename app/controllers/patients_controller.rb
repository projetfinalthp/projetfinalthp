class PatientsController < ApplicationController
before_action :authorize_user, except: [:index]

  def index
    @user == current_patient
  end

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
  end

  private

  def authorize_user 
    @user = Patient.find(params[:id])
    unless current_patient == @user
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end
