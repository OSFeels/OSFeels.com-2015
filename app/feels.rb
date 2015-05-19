require 'sinatra'
require 'sinatra/reloader' if development?
require 'redcarpet'

get '/' do
  send_file File.expand_path('index.html', settings.public_folder)
end

get '/bootstrap' do
  pass unless development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
