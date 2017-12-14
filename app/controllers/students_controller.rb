class StudentsController < ApplicationController

  def index
    @students = Student.all.order(created_at: :desc)

  end

  def show
    @student = Student.find_by(id: params[:id])
    end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

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
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    flash[:notice] = "Deleted"
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :gender, :enlollment_date,
      :nationality, :work_place, :occupation, :image_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
