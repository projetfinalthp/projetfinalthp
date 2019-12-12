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

