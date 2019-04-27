require 'sinatra'
require 'haml'

APP_ROOT = File.dirname(__FILE__)

# Controladores
require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/students_controller'
require_relative 'app/controllers/teachers_controller'

# Modelos
require_relative 'app/models/base'
require_relative 'app/models/student'
require_relative 'app/models/teacher'

#Rutas
map('/students') { run StudentsController }
map('/teachers') { run TeachersController }
