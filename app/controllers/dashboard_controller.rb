class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
		@assignments = Assignment.all
	end

  def show
    @student = Student.find(params[:id])
    @assignments = Assignment.find(params[:id, :title])
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