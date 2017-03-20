
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
#last place in the reindeer rankings. Vixen knows what he did.

#3. The @gender attribute should have a setter method that allows @gender to be 
#reassigned from outside the class definition.

#4. Add two "getter" methods as well:
#  The method age should simply return @age.
#  The method ethnicity should return @ethnicity.

#Release 3
#1. Refactor your code with attr_reader and attr_accessor. 
#Verify that your driver code still works.

#2. Use our array of example genders and an array of example ethnicities 
#(and feel free to add to it if you like -- each array could have a lot more options in it!) 
#to create your Santas with a randomly selected gender and a randomly selected ethnicity. 
#(How do you randomly select an array item? The Array documentation should be able to help 
#you out there!)

#3. Set your new Santa's age to a random number between 0 and 140.

#4. No need to store your Santas in a data structure, but your program should 
#print out the attributes of each Santa using the instance methods that give you 
#access to that data.

class Santa
	attr_accessor :gender, :age, :ethnicity, :elf
	attr_reader  :reindeer_ranking

	def initialize
		@gender
		@ethnicity
		@elf
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing santa instance......"	
	end

	def santas_random_age
		santa_age = rand(140)
		@age = santa_age
		@age
	end

	def speak
		puts "Ho, ho, ho! Haapy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!!!!!"
	end

	def random_elf_generator
		rnd_elf = rand(2)
		if rnd_elf == 1
			@elf = true
		else
			@elf = false
		end
	end

	def celibrate_birthday
		age += 1
		puts "Happy birthday #{@name}!"	
	end

	def get_mad_at(name)
		reindeer_ranking.keep_if{ 
			|reindeer| reindeer != name
		}
		reindeer_ranking << name
		puts reindeer_ranking
	end

	def random_gender_and_ethnicities
		rnd_number = rand(7)
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		index1 = 0
		index2 = 0
		until index1 == example_genders.length
			if rnd_number == index1
				@gender = example_genders[index1]
			end
			index1 += 1
		end
		@gender

		until index2 == example_ethnicities.length
			if rnd_number == index2
				@ethnicity = example_ethnicities[index2]
			end
			index2 += 1
		end
		@ethnicity
	end

	#def get_elf
	#	@elf
	#end

	#def elf=(elf)
	#	elf = @elf
	#end

	def show_santas
		puts "Age: #{age}"
		puts "Gender: #{gender}"
		puts "Ethnicity: #{ethnicity}"
		puts "Elf: #{elf}"
	end

end
santas = []
santa = Santa.new
santa2 = Santa.new
santa3 = Santa.new
puts santa3.get_mad_at("Vixen")

santa3.random_gender_and_ethnicities
santa3.santas_random_age
santa3.random_elf_generator
santa3.show_santas

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















