=begin
module Shout
	def self.yell_angrily(words)
		p words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end
require_relative 'shout'
Shout.singleton_methods

Shout.yell_angrily("Hello")
Shout.yelling_happily("There")
=end


module Shout
	def yell_angrily(words)
		puts words + "!!! " + ":("
	end

	def yell_happily(words)
		puts words + "!!! " + ":)"		
	end
end

class Angry_dude
	include Shout
end

class Happy_dude
	include Shout
end

angry_dude = Angry_dude.new
happy_dude = Happy_dude.new

angry_dude.yell_angrily("Shitt")
happy_dude.yell_happily("Yaeee")






