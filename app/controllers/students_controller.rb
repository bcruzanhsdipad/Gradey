class StudentsController < InheritedResources::Base
before_filter :authenticate_user!, except: [:show]
  
  def index
		@students = Student.where(user_id: current_user)
	end

	def show
		@student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
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
end

