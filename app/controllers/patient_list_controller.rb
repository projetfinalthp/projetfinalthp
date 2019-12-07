class PatientListController < ApplicationController
before_action :authorize_user

  def show
  	@practionner_patients = Practionner.find(params[:id]).patients
  end

  private

  def authorize_user 
    @user = Practionner.find(params[:id])
    unless current_practionner == @user
      flash[:danger] = "Please log in."
      redirect_to new_practionner_session_path
    end
  end

end
