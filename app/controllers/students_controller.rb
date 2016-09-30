class StudentsController < ApplicationController
  before_action :set_student, except: [:new,:index,:create]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_index_path
    end
  end

  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def update
    puts "**********"
    puts params
    if @student.update(student_params)
      redirect_to students_index_path
    end
  end

  def delete
    if @student.destroy
      redirect_to students_index_path
    end
  end

private
  
  def set_student
    @student = Student.find params[:id]
  end

  def student_params
    params.require(:student).permit!
  end 
end
