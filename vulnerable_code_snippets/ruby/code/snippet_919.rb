require 'json'
require 'open-uri'

def fetch_user_input(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  JSON.parse(response.body)
end

def process_data(data)
  data.each do |key, value|
    if key == "command"
      system(value)
    end
  end
end

url = ARGV[0]
data = fetch_user_input(url)
process_data(data)