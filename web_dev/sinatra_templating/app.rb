# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS campus(
	id INTEGER PRIMARY KEY,
	state VARCHAR(255),
	city VARCHAR(255)
	)
SQL
db.execute(create_table_cmd)

get '/' do
	@students = db.execute("SELECT * FROM students")
	erb :home 
end

get '/students/new' do
	erb :new_student
end

get '/students/campus' do
	@campus = db.execute("SELECT * FROM campus")
	erb :new_campus
end


post '/students' do 
	db.execute("INSERT INTO students (name, campus, age)
	VALUES (?,?,?)", [params['name'], params['campus'],
	params['age'].to_i])
	redirect '/'
end

post '/campus' do
	db.execute("INSERT INTO campus (state, city)
	VALUES (?,?)", [params['state'], params['city']])
	redirect '/'
end





