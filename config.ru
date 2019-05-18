require_relative 'boot.rb'

#Rutas
map('/students') { run StudentsController }
map('/teachers') { run TeachersController }

