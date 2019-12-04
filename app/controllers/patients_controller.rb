class PatientsController < ApplicationController

  def show
  	@patient_day = Patient.find(params[:id]).days
  end

  def edit
  end

end
