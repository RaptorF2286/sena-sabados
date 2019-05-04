class StudentsController < ApplicationController
  set :views, File.join(* APP_ROOT, 'app', 'views', 'students')

  get '/' do
    @students = Student.all
    haml :index
  end

  # get '/:id' do
  #   id = params[:id].to_i
  #   student = Student.all[id]
  #   @student = student
  #   haml :show
  # end

  get '/new' do
    haml :new
  end

  post '/create' do
    student = Student.new(
      params[:nombre],
      params[:programa],
      params[:fecha_nacimiento],
      params[:correo]
    )
    puts student
    student.save
    redirect '/students'
  end

  # get '/edit/:id' do
  #   haml :edit
  # end

  # get '/update/:id' do
  # end

  # private

  # def set_student
  #   id = params[:id].to_i
  #   student = Student.all[id]
  #   @student = student
  # end

  # def student_params
  #   params.require(:student).permit(:nombre, :programa, :fecha_nacimiento, :correo)
  # end
end
