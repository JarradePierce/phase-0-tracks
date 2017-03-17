
cars = {
	make: "Tesla",
	model: "s",
	year: 2017,

	make: "Nissan",
	model: "240 sx",
	year: 1989,

	make: "Ford",
	model: "Mustang",
	year: 2016
}


drivers = ["Gordon", "Patrick", "Harvick"]
=begin
cars.each do |key, value| 
	puts "#{key}: #{value}"
end

drivers.each do |driver|
	puts driver
end
=end

drivers.map do |driver|
	driver.next
end

=begin
drivers.map! do |driver|
	driver.next
end
=end 
puts drivers








