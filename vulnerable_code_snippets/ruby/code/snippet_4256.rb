class UserController < ApplicationController
  def update_email
    new_email = params[:new_email]
    system("echo #{new_email} | mail -s 'New Email' admin@example.com")
  end
end