require 'sinatra'
require 'sequel'

DB = Sequel.connect('sqlite://database.db')

class User < Sequel::Model(DB[:users])
end

get '/user/:id' do
  @user = User[params[:id]]
  erb :user
end

__END__

@@ user
<%= @user.name %>