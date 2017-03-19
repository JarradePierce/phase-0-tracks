#1. A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
#(Santa has been working on being more inclusive.)

#2. An eat_milk_and_cookies method that takes a cookie type 
#(example: "snickerdoodle") as a parameter and prints "That was a good 
#<type of cookie here>!" 

#3. An initialize method that prints "Initializing Santa instance ...".

#4. gender, which will be a string passed in on initialization
#5. ethnicity, which will be a string passed in on initialization
#6. reindeer_ranking, an array of reindeer from most preferred to least preferred. 
#This is not passed in on initialization; it simply gets a default value of
#["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#7. age, which is not passed in on initialization and defaults to 0

class Santa
	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	age = 0

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@elves = []
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
end
santas = []
santa = Santa.new("male", "black")
santa2 = Santa.new("female", "white")
santas << santa
santas << santa2


santas.each do |santa|
	puts santa.speak
	puts santa.eat_milk_and_cookies("chocolate chip")
	puts santa.elf("elf")
end











