class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.by_name(params[:name])
    else 
      Student.all
    end
    render json: students
  end

  def findbyid
    students = Student.find_by(id: params[:id])
    render json: students
  end

end
