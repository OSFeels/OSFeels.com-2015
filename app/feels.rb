require 'sinatra'
require 'yaml'
if Sinatra::Base.development?
  require 'sinatra/reloader'
  require 'redcarpet'
end

get '/' do
  erb :index
end

get '/conduct' do
  markdown :conduct, layout_engine: :erb
end

get '/sponsors' do
  @sponsors = YAML.load File.read("app/data/sponsors.yml")
  erb :sponsors
end

get '/tickets' do
  erb :tickets
end

get '/prospectus' do
  send_file File.join(settings.public_folder, 'prospectus.pdf')
end

get '/talk-ideas' do
  erb :talk_ideas
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end
