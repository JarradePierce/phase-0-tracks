
#Release 0

#1. A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
#(Santa has been working on being more inclusive.)
#2. An eat_milk_and_cookies method that takes a cookie type 
#(example: "snickerdoodle") as a parameter and prints "That was a good 
#<type of cookie here>!" 
#3. An initialize method that prints "Initializing Santa instance ...".

#Realse 1
#4. gender, which will be a string passed in on initialization
#5. ethnicity, which will be a string passed in on initialization
#6. reindeer_ranking, an array of reindeer from most preferred to least preferred. 
#This is not passed in on initialization; it simply gets a default value of
#["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#7. age, which is not passed in on initialization and defaults to 0

#release 2
#Add three attribute-changing methods to your Santa class:

#1. celebrate_birthday should age Santa by one year.
#2.	get_mad_at can take a reindeer's name as an argument, and move that reindeer in
#   last place in the reindeer rankings. Vixen knows what he did.
#3. The @gender attribute should have a setter method that allows @gender to be 
	#reassigned from outside the class definition.

#3. Add two "getter" methods as well:
#  The method age should simply return @age.
#  The method ethnicity should return @ethnicity.

class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@elves = []
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing santa instance......"	
	end

	def speak
		puts "Ho, ho, ho! Haapy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!!!!!"
	end

	def elf(name)
		@elves << name
		puts "Hello #{name}"
	end

	def celibrate_birthday
		@age += 1
		puts "Happy birthday #{@name}!"	
	end

	def get_age
		@age
	end

	def get_gender
		@gender
	end

	def gender=(gender)
		@gender = gender
	end

	def get_mad_at(name)
		@reindeer_ranking.keep_if{ 
			|reindeer| reindeer != name
		}
		@reindeer_ranking << name
		puts @reindeer_ranking
	end
end
santas = []
santa = Santa.new("male", "black")
santa2 = Santa.new("female", "white")
santa3 = Santa.new("male", "mix")
puts santa3.get_mad_at("Vixen")

=begin
santas << santa
santas << santa2


santas.each do |santa|
	puts santa.speak
	puts santa.eat_milk_and_cookies("chocolate chip")
	puts santa.elf("elf")
	santa.show
end
=end















