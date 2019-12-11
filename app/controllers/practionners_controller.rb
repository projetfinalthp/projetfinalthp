class PractionnersController < ApplicationController
before_action :authorize_user, except: [:index]

  def index
  end

  def show
  	@patients_of_the_day = Practionner.find(params[:id]).patients
  end

  def edit
    @practionner = Practionner.find(params[:id])
  end

  def update
    @practionner = Practionner.find(params[:id])
    if @practionner = Practionner.update(practionner_params)
    redirect_to edit_practionner_path
    else
    render 'edit'
    end 
  end
  
  private

  def practionner_params
    params.require(:practionner).permit(:first_name, :last_name, :specialty, :adress, :sexe, :diploma, :certifications)
  end


	def authorize_user 
    @user = Practionner.find(params[:id])
    unless current_practionner == @user
      flash[:danger] = "Please log in."
      redirect_to new_practionner_session_path
    end
  end

end
