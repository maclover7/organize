require 'dotenv'
Dotenv.load
require File.expand_path('../app', __FILE__)
if ENV['RACK_ENV'] != 'development'
  use Rack::Auth::Basic do |u, p|
    u = ENV['RACK_AUTH_USER']
    p = ENV['RACK_AUTH_PWD']
  end
end
run Sinatra::Application
