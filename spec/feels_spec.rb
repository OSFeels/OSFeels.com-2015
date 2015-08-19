ENV['RACK_ENV'] = 'test'

require_relative '../app/feels'  # <-- your sinatra app
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

  it "has a code of conduct" do
    get '/conduct'
    expect(last_response).to be_ok
  end

  it "has a sponsors page" do
    get '/sponsors'
    expect(last_response).to be_ok
  end

  it "has a tickets page" do
    get '/tickets'
    expect(last_response).to be_ok
  end

  it "has a prospectus page" do
    get '/prospectus'
    expect(last_response).to be_ok
  end

  it "has a talk ideas page" do
    get '/talk-ideas'
    expect(last_response).to be_ok
  end

  it "has a speakers page" do
    get '/speakers'
    expect(last_response).to be_ok
  end
end