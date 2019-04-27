class TeachersController < ApplicationController
  set :views, File.join(APP_ROOT, 'app', 'views', 'teachers')

  get '/' do
    @teachers = Teacher.all
    haml :index
  end

  get '/:id' do
    id = params[:id].to_i
    teacher = Teacher.all[id]
    @teacher = teacher
    haml :show
  end
end
