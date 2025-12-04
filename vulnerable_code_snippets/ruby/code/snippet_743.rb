class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :admin
end

user = User.new(params[:user])