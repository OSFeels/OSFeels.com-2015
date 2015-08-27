require 'sinatra'
require 'yaml'
require 'redcarpet'

if Sinatra::Base.development?
  require 'sinatra/reloader'
end

get '/' do
  erb :index
end

get '/conduct' do
  markdown :conduct, layout_engine: :erb
end

get '/info' do
  erb :info
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

get '/speakers' do
  speaker_data = YAML.load File.read("app/data/speakers.yml")
  @speakers = sort_by_name(speaker_data)
  erb :speakers
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end

def sort_by_name(items)
  items.sort_by { |item| item["name"] }
end
