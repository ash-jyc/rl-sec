require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions

get '/' do
  "Hello World!"
end

post '/transfer' do
  # Vulnerable CSRF Protection Bypass
  if request.env['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest'
    # Proceed with the transfer
    "Transfer successful!"
  else
    # Reject the transfer
    "Invalid request!"
  end
end