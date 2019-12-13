class PatientsController < ApplicationController
before_action :authorize_user, except: [:index]

  def index
    
  end

  def show
  	@patient_day = Patient.find(params[:id]).days
    @day = Day.new
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
    @user_practionner = @user.practionners

    @user_practionner.each do |practionner|
      if practionner == current_practionner
        @count = 1
      end
    end

    if @user == current_patient
      @count = 1
    end

    if @count != 1
      flash[:danger] = "Please log in."
      redirect_to new_patient_session_path
    else
    end
  end

end

