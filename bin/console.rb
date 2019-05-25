#!/usr/bin/env ruby

require 'irb'
require_relative '../boot'

def reload!
  puts 'Recargando...'
  path = File.join(APP_ROOT, 'boot.rb')
  load path
end

IRB.start
