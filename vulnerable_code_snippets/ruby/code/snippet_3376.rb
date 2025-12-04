require 'sinatra'

get '/users/:id' do
  id = params['id']
  if id =~ /^\d+$/
    # fetch user by id
  else
    halt 404
  end
end