require 'sinatra'
require 'sinatra/reloader' if development?
require 'redcarpet'

get '/' do
  markdown :index, layout_engine: :erb
end
