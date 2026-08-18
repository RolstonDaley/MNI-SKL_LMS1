class SessionsController < ApplicationController
  def new
    # Pre-select school if passed from home page cards
    @selected_school = params[:school]
    @schools = [
      "Montserrat Secondary School",
      "Look Out Primary School",
      "Brades Primary School"
    ]
  end

  def create
    # Mock login redirect based on selected role
    if params[:role] == "teacher"
      redirect_to teacher_grades_path(school: params[:school]), notice: "Logged in successfully as Instructor."
    else
      redirect_to student_grades_path(school: params[:school]), notice: "Logged in successfully as Student."
    end
  end

  def destroy
    redirect_to root_path, notice: "You have been logged out."
  end
end
