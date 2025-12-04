class ApplicationController < ActionController::Base
  def index
    regex = /^(a+)+$/
    params[:input].match(regex)
  end
end