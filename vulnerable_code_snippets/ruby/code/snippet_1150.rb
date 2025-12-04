require 'sinatra'
require 'sinatra/activerecord'
require 'sqlite3'

set :database, {adapter: "sqlite3", database: "dbfile.sqlite3"}

class User < ActiveRecord::Base
end

get '/search' do
  name = params[:name]
  results = User.where("name = '#{name}'")
  results.to_json
end