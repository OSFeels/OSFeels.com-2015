require 'sinatra'
if Sinatra::Base.development?
  require 'sinatra/reloader'
  require 'redcarpet'
end

get '/' do
  erb :index
end

get '/conduct' do
  markdown :code_of_conduct, layout_engine: :erb
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
