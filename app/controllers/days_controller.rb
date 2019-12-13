class DaysController < ApplicationController

	def new
		@day = Day.new
	end

	def create
		@day = Day.new(day_params)
		@day.save
	end

	private
	def day_params
		params_require(:day).permit(:mood, :hours_of_sleep)
	end
end
