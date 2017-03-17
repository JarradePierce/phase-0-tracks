
cars = {
	tesla:  "model s",
	ford: "mustang",
	chevy: "camero",
	nissan: "240 sx"
}


drivers = ["Gordon", "Patrick", "Harvick", "Hamlin"]

=begin
cars.each do |key, value| 
	puts "#{key}: #{value}"
end

drivers.each do |driver|
	puts driver
end

drivers.map do |driver|
	driver.next
end
=end

=begin
drivers.map! do |driver|
	driver.next
end
=end 
#puts drivers

#Deleting Drivers greater than 6
#drivers.delete_if{ 
#	|driver| driver.length > 6
#}

#KEEPING Driveres greater than 6
#drivers.keep_if{
#	|driver| driver.length > 6
#}

#Data Structure
#drivers.reverse_each{
#	|driver| driver > 1 
	#puts driver
#}


# REMOVES 
#drivers.keep_if{
#	|driver| driver.length < 7
 #}

#puts drivers

#Deletes if value is greater then 7
#cars.delete_if{
#	|key, value| value.length >= 7
#}

#Satisfies condition is value greater or equal to 7
#cars.keep_if{
#	|key, value| value.length >= 7
#}

#Iterates through hash
cars.each_key{
	|key, value| puts key
 }

#Iterates through condition and gives boolean
#cars.each_value{
#	|value| short_names = value.length > 6
#	puts short_names
#}

cars.each do |key, value|
	puts "#{key}: #{value}"
end
























