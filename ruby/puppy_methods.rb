class Puppy

	def initialize
		puts "Initializing new Puppy instance"
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times do |woof|
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*Roll over*"
  end

  def dog_years(human_years)
  	dog_year = human_years * 7
  	dog_year
  end

  def shake(name)
  	puts "Shakes #{name}'s hand"
  end

end


puppy = Puppy.new
puppy.fetch("Bone")
puppy.speak(5)
puppy.roll_over
puts puppy.dog_years(3)
puppy.shake("jays")


class Candy

	def initialize
		puts "Initializing candy instance..."
	end

	def pick_type_of_candy(candy_type)
		puts "I choose #{candy_type}!"
	end

	def eats_candy(candy)
		puts "I am now eating #{candy}!"
	end

end

#candy = Candy.new
#candy.pick_type_of_candy("Reeses")
#candy.eats_candy("Reeses")

candies = []
50.times do
	candies << Candy.new
end

candies.each do |methods|
	methods.pick_type_of_candy("Reeses")
	methods.eats_candy("Reeses")
end



















