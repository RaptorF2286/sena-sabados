class StudentsController < ApplicationController
  set :views, File.join(* APP_ROOT, 'app', 'views', 'students')
# before_action :set_student, only: %[]

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
  
  get '/new' do
    haml :new
  end

  get '/create' do
    student = Student.new(student_params)
    student.save
  end

  get '/edit/:id' do
    haml :edit
  end

  get '/update/:id' do
  end

  private 

  def set_student
    id = params[:id].to_i
    student = Student.all[id]
    @student = student
  end

  def student_params
    student = params.require(:student).permit(%i[:nombre :programa :fecha_nacimiento :correo])
  end
end
