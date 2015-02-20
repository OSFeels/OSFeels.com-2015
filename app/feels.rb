require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'

get '/' do
  "hello world"
end