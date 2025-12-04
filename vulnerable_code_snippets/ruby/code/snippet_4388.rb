class UserController < ApplicationController
  def show
    user_id = params[:id]
    @user = User.find(user_id)
    safe_level = params[:safe_level]
    eval("@user.#{safe_level}")
  end
end