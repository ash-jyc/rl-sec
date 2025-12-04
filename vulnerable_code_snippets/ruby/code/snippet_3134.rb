require 'sqlite3'

db = SQLite3::Database.new ":memory:"

db.execute <<-SQL
    create table users (name, email);
SQL

def add_user(name, email)
  db.execute("INSERT INTO users VALUES (?, ?)", name, email)
end

def get_user(name)
  db.execute("SELECT * FROM users WHERE name=?", name)
end

add_user(params[:name], params[:email])
get_user(params[:name])