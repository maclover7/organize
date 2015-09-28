require 'bundler/setup'
require 'sinatra'

if development?
  require 'pry'
  require 'sinatra/reloader'
end

get '/' do
  #Trello::Board.all.each do |board|
    #board.lists.first.cards.second.attributes[:due]
  #end
  @list = ['hi']
  erb :index
end
