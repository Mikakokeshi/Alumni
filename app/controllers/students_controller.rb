class StudentsController < ApplicationController
  def index
    @students = Student.all.order(created_at: :desc)
  end


  def show
    @student = Student.find_by(id: params[:id])
    @model = @student.model
    end

  def new
    @student = current_model.students.build
  end

  def create
    @student = current_model.students.build(student_params)

     if @student.save
       redirect_to students_path, notice: "created and saved sucusessfully"
     else
       redirect_to new_student_path, notice: "failed"
     end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  end

  private
  def student_params
    params.require(:student).permit(:name, :gender, :enlollment_date, :nationality, :work_place, :occupation, :company_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
