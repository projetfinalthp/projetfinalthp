class PatientsController < ApplicationController
before_action :authorize_user, except: [:index]

  def index
    
  end

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
  end

  private

  def authorize_user 
    @user = Patient.find(params[:id])
    @user_practionner = @user.practionner.find(params[:id])
    unless current_practionner = @user_practionner
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end

