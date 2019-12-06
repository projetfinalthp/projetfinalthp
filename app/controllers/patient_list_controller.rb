class PatientListController < ApplicationController
  def show
  	@practionner_patients = Practionner.find(params[:id]).patients
  end
end
