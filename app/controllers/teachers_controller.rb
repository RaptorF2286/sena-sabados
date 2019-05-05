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
    teacher = Teacher.new(teacher_params)
    teacher.save
    redirect '/teachers'
  end

  get '/:id' do
    id = params[:id].to_i
    teacher = Teacher.all[id]
    @teacher = teacher
    haml :show
  end


  private

  def teacher_params
    params[:teacher]
  end
end
