class StudentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @student = current_model.students.build
  end

  def create
    @student = current_model.students.build(student_params)

     if @student.save
       redirect_to edit_student_path(@student), notice: "created and saved sucusessfully"
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
