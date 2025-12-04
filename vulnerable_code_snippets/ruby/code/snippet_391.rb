# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  # No CSRF token verification
  skip_before_action :verify_authenticity_token
end

# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end

# app/views/users/edit.html.erb
<%= form_for(@user) do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>

  <%= f.label :email %>
  <%= f.text_field :email %>

  <%= f.submit "Update" %>
<% end %>