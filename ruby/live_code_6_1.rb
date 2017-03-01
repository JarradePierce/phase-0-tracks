class Reindeer
	#declares what is a getter
	attr_reader :location

	#declares both getter and setter
	attr_accessor :name

	def initialize(name)
		@name = name
		@location = "North Poll"
	end

	def take_off(altitude)
		puts "#{@name} take off"
		puts "#{@name} ascended to #{altitude} feet"
	end

	def land(location)
		puts "Landed safely in #{location}"
		@location = location
	end

	def about
		puts "Name: #{@name}"
		puts "#Location: {@location}"
	end


end

reindeer = Reindeer.new("Rudolf")
reindeer.take_off(10000)
reindeer.land("San Fransisco")
reindeer.name = "The Reindeer fambam"
