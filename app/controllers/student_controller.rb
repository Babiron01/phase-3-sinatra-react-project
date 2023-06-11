class StudentController < ApplicationController
    get '/student' do
      students = Student.all
      students.to_json
    end
  
    get '/student/:id' do
      student = Student.find(params[:id])
      student.to_json
    end
  
    post '/student' do
      body = JSON.parse(request.body.read)
      course = Course.find_or_create_by(title: body["course"])
      student = Student.create(
        first_name: body["first_name"],
        last_name: body["last_name"],
        middle_name: body["middle_name"],
        course: course
      )
      student.to_json
    end
  
    patch '/student/:id' do
      student = Student.find(params[:id])
      course = Course.find_or_create_by(title: params[:course])
      student.update(
        first_name: params[:first_name],
        last_name: params[:last_name],
        middle_name: params[:middle_name],
        course: course
      )
      student.to_json
    end
  
    delete '/student/:id' do
      student = Student.find(params[:id])
      student.destroy
      student.to_json
    end
  end
  