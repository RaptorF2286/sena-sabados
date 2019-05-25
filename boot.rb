require 'sinatra'
require 'haml'


APP_ROOT = File.dirname(__FILE__)

# INITIALIZERS
Dir[File.join(APP_ROOT, 'config', 'initializers', '*.rb')].each(&method(:require))

# Controladores
# require_relative 'app/controllers/application_controller'
Dir[File.join(APP_ROOT, 'app', 'controllers', '*.rb')].each(&method(:require))

# Modelos
Dir[File.join(APP_ROOT, 'app', 'models', '*.rb')].each(&method(:require))
