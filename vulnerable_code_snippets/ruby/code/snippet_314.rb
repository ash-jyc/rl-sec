require 'pg'

def get_user_info(username)
  conn = PGconn.connect(:dbname => 'test')
  res  = conn.exec("SELECT * FROM users WHERE username = '#{username}'")
  res.each do |row|
    puts row
  end
ensure
  conn.close if conn
end

get_user_info("admin' OR '1'='1' --")