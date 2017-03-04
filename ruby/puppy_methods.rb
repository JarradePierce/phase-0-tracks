class Puppy

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

