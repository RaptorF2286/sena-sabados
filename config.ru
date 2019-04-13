require 'sinatra'

APP_ROOT = File.dirname(__FILE__)

# Controladores
require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/students_controller'

# Modelos
require_relative 'app/models/student'

map('/students') { run StudentsController }
