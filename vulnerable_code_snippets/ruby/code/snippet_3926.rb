def authenticate_user(username, password)
  start = Time.now
  user = User.find_by(username: username)
  finish = Time.now

  if user && user.password == password
    return true
  end

  if finish - start > 0.05
    sleep(0.1)
  end

  false
end