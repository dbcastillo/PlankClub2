class ApplicationController < ActionController::Base
  helper_method :current_student, :is_loggedin?

  def current_student
    if session[:student_id]
      @student = Student.find(session[:student_id])
    end
  end

  def is_loggedin?
    !!current_student
  end 
end
