require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/books.db")}
DB[:conn].execute("DROP TABLE IF EXISTS books")

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS books (
  id INTEGER PRIMARY KEY,
  name TEXT,
  author TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
