class Puppy

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

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(2)
puppy.shake













