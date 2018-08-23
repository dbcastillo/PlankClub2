class StudentsController < ApplicationController
  before_action :authorized

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student_plank = [StudentPlank.find_by(student: @student)]
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(username_params)
    if @student.valid?
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def username_params
    params.require(:student).permit(:username, :password, :name, :mod)
  end

  def authorized
    redirect_to login_path unless session[:student_id]
  end

end
