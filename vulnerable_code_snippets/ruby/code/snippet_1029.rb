class VulnerableController < ApplicationController
  def index
    user_input = params[:user_input]
    eval(user_input)
  end
end