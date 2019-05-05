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
    student = Student.new(student_params)
    student.save
    redirect '/students'
  end

  get '/:id' do
    id = params[:id].to_i
    student = Student.all[id]
    @student = student
    haml :show
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
