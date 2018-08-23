class StudentPlanksController < ApplicationController

  def new
    @planks = Plank.all
    @student_plank = StudentPlank.new
  end

  def create
    if params[:student_plank][:plank_id] != "5"
      @student = Student.find(params[:id])
      @student_plank = StudentPlank.new(student_plank_params)
      @student_plank.student_id = @student.id
      if @student_plank.save
        redirect_to student_path(@student)
      else
        render :new
      end
    else
      if current_student.id == 5
        @student = Student.find(params[:id])
        @student_plank = StudentPlank.new(student_plank_params)
        @student_plank.student_id = @student.id
        if @student_plank.save
          redirect_to student_path(@student)
        else
          render :new
        end
      else
        render :tito
      end
    end
  end

  def edit
    @student = Student.find(params[:id])
    @student_plank = StudentPlank.find(params[:sp_id])
  end

  def update
    @student = Student.find(params[:id])
    @student_plank = StudentPlank.find(params[:sp_id])
    @student_plank.student_id = @student.id
    if @student_plank.update(student_plank_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student_plank = StudentPlank.find(params[:sp_id])
    @student_plank.destroy
    redirect_to student_path(@student)
  end

  private

  def student_plank_params
    params.require(:student_plank).permit(:student_id, :plank_id, :duration)
  end
end
