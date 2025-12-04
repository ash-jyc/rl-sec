# Require necessary libraries
require 'sinatra'

# Set up a simple web server
get '/' do
  # Get the input from the query string
  input = params['input']

  # Evaluate the input using eval
  eval(input) if input

  # Return a response
  "Hello, world!"
end