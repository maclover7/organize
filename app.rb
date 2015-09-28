require 'bundler/setup'
require 'sinatra'

if development?
  require 'pry'
  require 'sinatra/reloader'
end

get '/' do
  erb :index
end
