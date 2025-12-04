class UserController < ApplicationController
  def search
    @user = User.find_by("username = '#{params[:username]}'")
    render json: @user
  end
end