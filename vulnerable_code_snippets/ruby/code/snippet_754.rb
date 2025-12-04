def show_user_info(request)
  user = User.find(request.params[:id])
  "<h1>User Info</h1><p>Name: #{user.name}</p><p>Email: #{user.email}</p>"
end