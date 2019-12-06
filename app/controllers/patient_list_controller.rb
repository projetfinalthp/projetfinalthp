class PatientListController < ApplicationController
before_action :authenticate_user

  def show
  	@practionner_patients = Practionner.find(params[:id]).patients
  end

  private

  def authenticate_user
    unless current_practionner
      flash[:danger] = "Please log in."
      redirect_to new_practionner_session_path
    end
  end

end