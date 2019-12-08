class PractionnersController < ApplicationController
before_action :authorize_user

  def index
  end

  def show
  	@patients_of_the_day = Practionner.find(params[:id]).patients
  end

  def edit
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
