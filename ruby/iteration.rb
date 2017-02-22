
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




















