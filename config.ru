require 'rubygems'
require 'sinatra.rb'

set :views, File.join(File.dirname(__FILE__), 'app', 'views')
set :run, false
set :env, :production

require 'app/app'
run Sinatra.application
