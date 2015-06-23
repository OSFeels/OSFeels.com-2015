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

get '/prospectus' do
  send_file File.join(settings.public_folder, 'osfeels_prospectus.pdf')
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
