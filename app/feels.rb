require 'sinatra'
require 'sinatra/reloader' if Sinatra::Base.development?

get '/' do
  if Sinatra::Base.development?
    erb :index
  else
    send_file File.expand_path('index.html', settings.public_folder)
  end
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
