class DashboardController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]
	
	def index
		@assignments = Assignment.where(user_id: current_user)
	end	

	def show
	end

	def edit
	end

	def new
		@assignment = current_user.assignment.build
	end

	def create
		@assignment = current_user.assignments.build(dashboard_params)
		if @assignment.save
				redirect_to :action => :index
		end
	end






private


	def dashboard_params
      params.require(:assignment).permit(:assignment_title, :score, :total, :date_assigned, :date_turned_in, :filename, :content_type, :file_contents)
    end
 end