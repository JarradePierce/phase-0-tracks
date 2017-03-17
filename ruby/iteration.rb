
#Release 0
def message
	puts "blah"
	yield
end
message {puts "another blah"}



#Release 1
animals = ["Zebra", "Lion", "Monkey", "Harambe"]

oceans = {
	"stingray" => "Pacific",
	"shark" => "Atlantic",
	"crab" => "Pacific",
	"coral" => "Arctic"
}

puts animals
animals.each do |animal|
	puts animal + "!"
end
puts animals

puts oceans
oceans.each do |fish, ocean|
	puts fish + " " + ocean
end
puts oceans

puts animals
animals.map! do |zoo_animal|
	zoo_animal.upcase
end
puts animals

puts " "
puts " "

#Release 2
=begin
animals.delete_if{ 
	|animal| animal.length > 5
}
puts animals

puts " " 

animals.keep_if{
	|animal| animal.length > 4
}
puts animals

if animals.length < 2
	animals.each do
	 animals.replace(["Zebra", "Wolf", "Bear", "Tiger", "Girraffe"])
	end
	puts animals
end


puts ""
puts "HASHES!"
puts ""
oceans.delete_if{
	|fish, ocean| fish >= "s"
}
puts oceans


puts "keep_if"
puts ""
oceans.keep_if{
	|fish, ocean| ocean == "Arctic"
}
puts oceans

#answer to question 3
oceans.each do |fish, ocean|
	if fish.length > 3
		puts fish
	end
end
=end

while oceans.length > 2
	oceans.replace({"Glow fish" => "Arctic", "Lion fish" => "Pacific"})
end

puts oceans


















