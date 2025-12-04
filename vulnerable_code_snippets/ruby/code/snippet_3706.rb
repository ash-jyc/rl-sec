require 'sqlite3'

db = SQLite3::Database.new ":memory:"

rows = db.execute <<-SQL
  create table users (name varchar(30), password varchar(30));
  insert into users values ('admin', 'password');
SQL

query = "SELECT * FROM users WHERE name = '#{params[:name]}' AND password = '#{params[:password]}'"

row = db.execute( query )

if row.length > 0
  puts "Login successful!"
else
  puts "Login failed!"
end