
#1. Declare your module. The syntax for declaring a module is pretty simple:
=begin
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

module Shout
  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	puts words + "!!!" + " :)"
  end

end

#declare classes for a bird and a plane:

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(8000)


plane = Plane.new
plane.take_off(80000)
=end




#1. Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.

#2. Write two classes representing anything that might shout, and include the Shout module 
#in those classes.

#3. Test your work by adding driver code at the bottom of the file that instantiates 
#instances of your classes and calls the two module methods on each instance.

module Flight
	def flying(feet)
		puts "Im flying!!! at #{feet} feet"
	end
end

module Shout
	def self.greeting(name)
		puts "Hi my name is " + name + "!!"
	end

	def self.good_bye(bye)
		puts "have a " + bye + " day!"
	end
end

class Good_day
	include Flight
end

class Bad_day
	include Flight
end

good = Good_day.new
good.flying(8000)

bad = Bad_day.new
bad.flying(8000)


























