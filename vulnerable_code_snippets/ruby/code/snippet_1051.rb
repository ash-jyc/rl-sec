require 'sinatra'

get '/search' do
  pattern = Regexp.new(params[:query])
  matches = []
  File.foreach('/path/to/large/file') do |line|
    matches << line if line =~ pattern
  end
  matches.join("\n")
end