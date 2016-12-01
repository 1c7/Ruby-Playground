# run: ruby hello.rb
require 'sinatra'

get '/' do
  'hello worl28dh222d'
end

run Sinatra::Application.run! # rackup hello.rb, not working..
