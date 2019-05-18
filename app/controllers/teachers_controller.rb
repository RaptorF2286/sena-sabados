class TeachersController < ApplicationController
  set :views, File.join(APP_ROOT, 'app', 'views', 'teachers')
  set :haml, layout: :'../layouts/application_layout'

  get '/' do
    @teachers = Teacher.all
    haml :index
  end

  get '/new' do
    haml :new
  end

  post '/' do
    Teacher.create(teacher_params)
    redirect '/teachers'
  end

  get '/:id' do
    id = params[:id]
    teacher = Teacher.find(id)
    @teacher = teacher
    haml :show
  end


  delete '/:id' do
    id = params[:id]
    Teacher.destroy(id)

    redirect '/teachers'
  end

  private

  def teacher_params
    params[:teacher]
  end
end
