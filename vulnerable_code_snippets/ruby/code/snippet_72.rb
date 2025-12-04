def search_users(query)
  User.where("username = '#{query}'")
end

search_users("admin' OR '1'='1")