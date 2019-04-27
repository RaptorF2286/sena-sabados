class StudentsController < ApplicationController
  set :views, File.join(APP_ROOT, 'app', 'views', 'students')

  get '/' do
    @students = Student.all
    haml :index
  end

  get '/:id' do
    id = params[:id].to_i
    student = Student.all[id]
    @student = student
    haml :show
  end
end
