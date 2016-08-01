class StudentsController < InheritedResources::Base
before_filter :authenticate_user!, except: [:index, :show]
  
  def index
		@students = Student.where(user_id: current_user)
	end

	def show
	end

	def edit
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
end

