class PractionnersController < ApplicationController

  def index
  end

  def show
  	@patients_of_the_day = Practionner.find(params[:id]).patients
  end

  def edit
  end
  
end
