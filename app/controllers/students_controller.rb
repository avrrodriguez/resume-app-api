class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end
end
