require 'sinatra'
if Sinatra::Base.development?
  require 'sinatra/reloader'
  require 'redcarpet'
end

get '/' do
  erb :index
end

get '/conduct' do
  if Sinatra::Base.development?
    markdown :code_of_conduct, layout_engine: :erb
  else
    send_file File.expand_path('code_of_conduct.html', settings.public_folder)
  end
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
