require 'sinatra'

get '/user/:id' do
  id = params['id']
  if id =~ /^[0-9]+$/
    @user = User.find(id)
    erb :user
  else
    status 404
    "User not found"
  end
end