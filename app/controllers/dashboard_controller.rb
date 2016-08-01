class DashboardController < ApplicationController
	


	def index
		












	def dashboard_params
      params.require(:dashboard).permit(:assignment, :score, :total, :date_assigned, :date_turned_in, :filename, :content_type, :file_contents)
    end