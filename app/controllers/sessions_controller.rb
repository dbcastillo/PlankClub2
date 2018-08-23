class SessionsController < ApplicationController
 def new
 end

 def create
   # Find the user
   @student = Student.find_by(username: params[:username])
   # Making sure they are who they say they are
   if @student && @student.authenticate(params[:password])
     # if the student ***is*** found
     session[:student_id] = @student.id
     redirect_to student_path(@student)
   else
     # If the student isn't found
     redirect_to login_path
   end
 end


 def destroy
   session.delete(:student_id)
   redirect_to login_path
 end
end
