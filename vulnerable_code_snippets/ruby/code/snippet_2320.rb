require 'uri'

def fetch_data(url)
  uri = URI.parse(url)
  params = URI.decode_www_form(uri.query || "")
  params_hash = Hash[params]
  
  # Vulnerable code: Directly using user input without sanitization
  eval "#{params_hash['code']}"
end

fetch_data("http://example.com?code=puts 'Injected Code!'")