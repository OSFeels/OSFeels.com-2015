ENV['RACK_ENV'] = 'test'

require_relative '../app/feels'
require 'rspec'
require 'rack/test'

describe 'Test the routes' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "has a main page" do
    get '/'
    expect(last_response).to be_ok
  end

  routes = %w(
    conduct
    diversity
    prospectus
    schedule
    speakers
    sponsors
    talk-ideas
    tickets
    visiting
  )

  routes.each do |route|
    it "has a #{route} page" do
      get "/#{route}"
      expect(last_response).to be_ok
    end
  end
end
