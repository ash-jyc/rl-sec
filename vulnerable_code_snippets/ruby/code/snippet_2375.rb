class UserController < ApplicationController
  def create
    username = params[:username]
    password = params[:password]

    if username =~ /^[a-zA-Z0-9]+$/ && password =~ /^[a-zA-Z0-9]+$/
      # Create user
    else
      # Handle error
    end
  end
end