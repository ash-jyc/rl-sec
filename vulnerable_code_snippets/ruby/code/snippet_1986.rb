class UserController < ApplicationController
  def create
    eval(params[:code])
  end
end