class UserController < ApplicationController
  def login
    username = params[:username]
    password = params[:password]
    
    cmd = "SELECT * FROM users WHERE username='#{username}' AND password='#{password}'"
    result = `#{cmd}`
    
    if result.empty?
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    else
      render json: { message: 'Logged in successfully' }, status: :ok
    end
  end
end