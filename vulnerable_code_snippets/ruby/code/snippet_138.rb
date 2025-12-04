def search_users(query)
  User.find_by_sql("SELECT * FROM users WHERE name = '#{query}'")
end

search_users("test' OR '1'='1")