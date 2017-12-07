class StudentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @student = current_model.students.build
  end

  def create
  end

  def edit
  end

  def update
  end
end
