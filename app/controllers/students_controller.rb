class StudentsController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student_plank = [StudentPlank.find_by(student: @student)]
  end

# registration
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(username_params)
    if @student.save
      session[:student_id] = @student.id
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
    session.delete(:student_id)
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod, :img_url)
  end

  def username_params
    params.require(:student).permit(:username, :password, :name, :mod, :img_url)
  end

  def authorized
    redirect_to login_path unless session[:student_id]
  end

end
