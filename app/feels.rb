require 'sinatra'
require 'sinatra/reloader' if development?
require 'redcarpet'

get '/' do
  markdown :index, layout_engine: :erb
end

get '/bootstrap' do
  pass unless development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
