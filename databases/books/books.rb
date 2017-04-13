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


def create_book(db, name, rating, book_id)
	db.execute("INSERT INTO myBooks (name, rating, book_id) VALUES (?, ?, ?)", [name, rating, book_id])
end

def main_menu(db)
	p '1. Enter a new book'
	p '2. Search a book by name'
	p '3. view all books'

	choose = gets.chomp.to_i
	if choose == 1
		add_book_to_myBooks(db)
	elsif choose == 2
		user_search_book_by_name(db)
	elsif choose == 3
		user_view_all_books(db)
	end
end

def add_book_to_myBooks(db)
	#User Create a new books inserts into the myBook table
	p 'Enter your book name'
	name = gets.chomp
	p 'Enter rating for the book out of 5'
	rating = gets.chomp
	create_book(db, name, rating, 1)
end

def user_view_all_books(db)
	myBooks = db.execute('SELECT * FROM myBooks')
	myBooks.each do |book|
		puts "#{book['id']} #{book['name']} | #{book['rating']} | #{book['book_id']}"
	end
end

def find_book_by_name(db, search)
	search_book = db.execute("SELECT * FROM myBooks WHERE name='#{search}'")
	search_book.each do |book|
		puts "Book ID: #{book['id']} Book Name: #{book['name']} Book Rating: #{book['rating']}"
	end
end

def user_search_book_by_name(db)
	p 'Search for a book!'
	search = gets.chomp
	find_book_by_name(db, search)
end

main_menu(db)






