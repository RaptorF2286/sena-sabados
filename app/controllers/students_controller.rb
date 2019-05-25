class StudentsController < ApplicationController
  set :views, File.join(APP_ROOT, 'app', 'views', 'students')
  set :haml, layout: :'../layouts/application_layout'

  get '/' do
    @students = Student.all
    haml :index
  end

  get '/new' do
    haml :new
  end

  post '/' do
    Student.create(student_params)
    redirect '/students'
  end

  get '/:id' do
    id = params[:id]
    @student = Student.find(id)
    haml :show
  end

  get '/:id/edit' do
    id = params[:id]
    @student = Student.find(id)
    haml :edit
  end

  patch '/:id' do
    student = Student.find(params[:id])
    student.update(student_params)
    redirect "/students/#{params[:id]}"
  end

  delete '/:id' do
    id = params[:id]
    Student.destroy(id)

    redirect '/students'
  end

  # get '/edit/:id' do
  #   haml :edit
  # end

  # get '/update/:id' do
  # end

  private

  def student_params
    params[:student]
  end
end
