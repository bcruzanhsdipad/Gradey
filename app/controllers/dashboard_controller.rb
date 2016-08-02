class DashboardController < ApplicationController

	def index
		@assignment = Assignment.all
	end

















private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
 
 private

    def assignment_params
      params.require(:assignment).permit(:title, :score, :total, :date_due, :date_receieved, :file, :details)
    end

end