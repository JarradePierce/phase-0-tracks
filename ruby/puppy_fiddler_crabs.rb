#Puppy Class
#create a class Puppy
#create a array of puppies
#create a method to add a puppy
#create a method to display puppies array

class Puppy

	def initialize(name)
		@name = name
		@puppies = []
	end

	def print_name
		puts @name
	end
end
puppy = Puppy.new("Lola")
puppy.print_name
