require 'sinatra'
require 'json'

class User
  attr_accessor :id, :name, :email

  def initialize(id, name, email)
    @id = id
    @name = name
    @email = email
  end

  def to_json(*options)
    {id: @id, name: @name, email: @email}.to_json(*options)
  end
end

users = [User.new(1, "John Doe", "john@example.com"), User.new(2, "Jane Doe", "jane@example.com")]

get '/users/:id' do
  user = users.find { |u| u.id == params[:id].to_i }
  return 404 if user.nil?
  content_type :json
  user.to_json
end

post '/users/:id' do
  user = users.find { |u| u.id == params[:id].to_i }
  return 404 if user.nil?
  user.name = params[:name] if params[:name]
  user.email = params[:email] if params[:email]
  content_type :json
  user.to_json
end