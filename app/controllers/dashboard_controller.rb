class DashboardController < ApplicationController
<<<<<<< HEAD
  before_filter :authenticate_user!
  def index
		@assignments = Assignment.all
	end

  def show
    @student = Student.find(params[:id])
    @assignments = Assignment.find(params[:id, :title])
  end







=======
  before_action :find_assignment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
	def index
		@assignments = Assignment.where(user_id: current_user)
	end

  def show
  end
>>>>>>> 43b0dd6d02e7646e45572a48417439853dfea855








private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
 
 private

    def assignment_params
      params.require(:assignment).permit(:title, :score, :total, :date_due, :date_receieved, :file, :details)
    end

end