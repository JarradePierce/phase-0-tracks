class Puppy

	def initialize
		puts "Initializing..."	
	end

	def fetch(toy)
    	puts "I brought back the #{toy}!"
  		toy
    end

	def speak(number)
		number.times do |woof|
			puts "woof"
		end
	end

	def roll_over
		puts "roll over"
	end

	def dog_years(number)
		dog_year = number * 7
		puts dog_year
		dog_year
	end

	def shake
		puts "shake"
	end
end

#puppy = Puppy.new
#puppy.fetch("ball")
#puppy.speak(5)
#puppy.roll_over
#puppy.dog_years(2)
#puppy.shake


class Football

	def initialize
		puts "Initializing..."
	end

	def pass(name, number)
		puts "Pass thrown to #{name} number #{number}"
	end

	def run(name, number)
		puts "Run by #{name} number #{number}"
	end
end

football = Football.new
football_arr = []

50.times do
	football_arr << football
end 

football_arr.each do |index|
	football.run("Zeak", 21)
	football.pass('Rogers', 12)
end



























