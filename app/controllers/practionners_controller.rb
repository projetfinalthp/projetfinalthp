class PractionnersController < ApplicationController
before_action :authenticate_user

  def index
  end

  def show
  	@patients_of_the_day = Practionner.find(params[:id]).patients
  end

  def edit
  end
  
  private

  def authenticate_user
    unless current_practionner
      flash[:danger] = "Please log in."
      redirect_to new_practionner_session_path
    end
  end

end