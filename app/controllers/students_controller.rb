class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to student_path(@student.id)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    find_student
  end

  def update
    find_student.update(student_params)
    if @student.valid?
      redirect_to student_path(@student.id)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :mod)
  end
end
