class VulnerableController < ApplicationController
  def index
    user_input = params[:user_input]
    system("echo #{user_input} > output.txt")
  end
end