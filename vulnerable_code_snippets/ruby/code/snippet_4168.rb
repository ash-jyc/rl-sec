class UserController < ApplicationController
  def update_password
    new_password = params[:new_password]
    system("echo #{new_password} | passwd --stdin #{current_user.username}")
  end
end