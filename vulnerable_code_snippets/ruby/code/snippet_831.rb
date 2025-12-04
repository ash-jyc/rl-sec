def show_user_info(user_id)
  user = User.find(user_id)
  puts "User ID: #{user.id}, User Name: #{user.name}"
end

show_user_info(params[:user_id])