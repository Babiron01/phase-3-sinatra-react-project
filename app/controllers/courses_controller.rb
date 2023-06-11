class CoursesController < ApplicationController

    get '/courses' do
       courses = Course.all
       courses.to_json
    end
 
    get '/courses/:id' do
       course = Course.find(params[:id])
       course.to_json
    end
 
    get '/courses/:id/students' do
       course = Course.find(params[:id])
       course.students.to_json
    end
 
    post '/courses' do
       course = Course.create(JSON.parse(request.body.read))
       course.to_json
    end
 
    patch '/courses/:id' do
       course = Course.find(params[:id])
       course.update(
          title: params[:title],
          semester: params[:semester],
          year: params[:year]
       )
       course.to_json
    end
 
    delete '/courses/:id' do
       course = Course.find(params[:id])
       course.destroy
       course.to_json
    end
    
 end