class PatientsController < ApplicationController
before_action :authorize_user, except: [:index]

  def index
    
  end

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient = Patient.update(patient_params)
    redirect_to edit_patient_path
    else
    render 'edit'
    end 
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name,:last_name, :treatment, :city, :birth, :sexe)
  end

  def authorize_user 
    @user = Patient.find(params[:id])
    unless current_patient == @user
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    end
  end

end

