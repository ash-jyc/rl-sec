class UserController < ApplicationController
  def show
    id = params[:id]
    @user = User.find_by("email = '#{id}'")
  end
end