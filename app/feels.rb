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
  erb :conduct
end

get '/prospectus' do
  send_file File.join(settings.public_folder, 'prospectus.pdf')
end

get '/schedule' do
  schedule = YAML.load File.read("app/data/schedule.yml")
  speakers = YAML.load File.read("app/data/speakers.yml")
  @schedule = get_schedule(schedule, speakers)
  erb :schedule
end

get '/speakers' do
  speaker_data = YAML.load File.read("app/data/speakers.yml")
  @speakers = sort_by_name(speaker_data)
  erb :speakers
end

get '/sponsors' do
  @sponsors = YAML.load File.read("app/data/sponsors.yml")
  erb :sponsors
end

get '/talk-ideas' do
  erb :talk_ideas
end

get '/tickets' do
  erb :tickets
end

get '/diversity' do
  erb :diversity
end

get '/bootstrap' do
  pass unless Sinatra::Base.development?
  erb :bootstrap
end

get '/*' do
  redirect '/'
end

def get_schedule(schedule, speakers)
  # This is kludgy bs because I didn't want to actually implement an ORM.
  schedule.map do |day|
    events = day["events"].map do |event|
      if event["speaker_name"]
        speaker = speakers.select { |s| s["name"] == event["speaker_name"] }
                          .first
        if speaker
          event.merge speaker
        else
          event
        end
      else
        event
      end
    end
    events        = events.reject { |e| e["name"].nil? || e["name"] == "" }
    day["events"] = events.sort_by { |e| e["start_time"] }
    day
  end
end

def format_time(start)
  parsed_time = Time.strptime(start, "%H%M")
  parsed_time.strftime("%l:%M %p")
end

def format_speaker_link(name)
  name.downcase.gsub(/\s+/, '-')
end

def sort_by_name(items)
  items.sort_by { |item| item["name"] }
end
