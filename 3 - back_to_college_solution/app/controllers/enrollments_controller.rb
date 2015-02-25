class EnrollmentsController < ApplicationController
  def new
    @student = Student.find(params[:id])
  end

  def create

    @student = Student.find params[:id]
    new_course_ids = params[:student][:course_ids]

    @student.enroll new_course_ids

    if @student.save
      redirect_to students_path, notice: "Enrollment saved"
    else
      render :enroll
    end
  end
end
