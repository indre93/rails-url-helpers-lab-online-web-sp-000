class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

    if @student.active == false
      @status = "This student is currently inactive."
    else @student.active == true
      @status = "This student is currently active."
    end

  end

  def activate

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
