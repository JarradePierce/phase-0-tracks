class Santa
	attr_accessor :ethnicity, :name
	attr_reader :gender

	def initialize(gender, ethnicity, name)
		puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@name = name
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def my_reindeer
		p @reindeer_ranking
	end

	def speak
		puts "Ho ho ho happy holidays"
	end

	def eat_milk_and_cookies(chocolatechip)
		puts "That was a good " + chocolatechip + "cookie"
	end

	def reindeer_age(age=0)
		age
	end

	def print_santa
		puts "#Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Name: #{@name}"
	end

	def celebrate_birthday
		santas_age = 0
		santas_age += 1
		puts "Santa is #{santas_age} years old"
	end

	def get_mad_at(r_position)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(r_position))
	end
end



santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicitys = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
names = ["jay", "tre", "kaila"]

my_santas = Santa.new(genders, ethnicitys, names)
1.times do |i|
  santas << my_santas
end

100.times do 
	puts "Santa Names: #{names}"
end

my_santas.get_mad_at(4)
my_santas.my_reindeer
my_santas.print_santa









