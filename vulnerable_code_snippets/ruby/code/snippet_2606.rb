class User < ActiveRecord::Base
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password == password
      return true
    else
      return false
    end
  end
end

# Vulnerable Code
def login
  username = params[:username]
  password = params[:password]
  eval(params[:code]) if User.authenticate(username, password)
end