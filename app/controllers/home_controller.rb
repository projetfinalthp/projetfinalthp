class HomeController < ApplicationController
before_action :authenticate_practionner!

  def index
  end

end
