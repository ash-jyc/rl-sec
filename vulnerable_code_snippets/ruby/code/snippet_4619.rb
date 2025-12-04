class User < ActiveRecord::Base
  def greet_user(name)
    puts "Hello #{name}"
  end
end

def create_user
  name = params[:name]
  User.create(name: name)
end

def greet_user
  @user = User.find(params[:id])
  system("echo 'Hello #{@user.name}'")
end