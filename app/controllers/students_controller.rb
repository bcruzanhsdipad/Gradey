class StudentsController < InheritedResources::Base
before_filter :authenticate_user!, except: [:show]
  
  def index
		@students = Student.where(user_id: current_user)
	end

	def show
		@student = Student.find(params[:id])
		@assignment = Assignment.where(student_id: current_user)

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @student }
    end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def new
		@student = current_user.students.build
	end

	def create
		@student = current_user.students.build(student_params)
		if @student.save
			redirect_to :action => :index
		end
	end


  private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
		end

		def assignment_params
			params.require(:assignment).permit(:title, :score, :total, :date_due, :date_receieved, :file, :details)
end

end

