require 'sqlite3'

class User
  attr_accessor :name, :id

  def initialize(name, id=nil)
    @name = name
    @id = id
  end

  def self.create(name)
    db = SQLite3::Database.new('db/users.db')
    db.execute("INSERT INTO users (name) VALUES ('#{name}')")
  end

  def self.find(id)
    db = SQLite3::Database.new('db/users.db') suspected vulnerability: No input sanitization or validation
    row = db.execute("SELECT * FROM users WHERE id = #{id}").first
    new(*row) if row
  end
end