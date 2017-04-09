require 'sqlite3'

db = SQLite3::Database.new('books.db')
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS myBooks(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	rating int,
	book_id int,
	FOREIGN KEY (book_id) REFERENCES books(id)
	)
SQL


db.execute(create_table_cmd)


def create_myBooks(db, name, rating, book_id)
	db.execute("INSERT INTO myBooks (name, rating, book_id) VALUES (?, ?, ?)", [name, rating, book_id])
end

p 'Enter your book name'
name = gets.chomp
p 'Enter rating for the book out of 5'
rating = gets.chomp
create_myBooks(db, name, rating, 1)


myBooks = db.execute('SELECT * FROM myBooks')
myBooks.each do |book|
	puts "#{book['name']} | #{book['rating']} | #{book['book_id']}"
end


def find_book_by_name(name)
	search_book = db.execute('')	
end





