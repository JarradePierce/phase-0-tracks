puts "What is the hamsters name?"
name = gets.chomp
puts "Whats is the volume level of the hamster 1 - 10"
volume = gets.chomp.to_i
puts "What color is the fur?"
fur = gets.chomp
puts "Is the hamster good for adoption"
adopt = gets.chomp
puts "What is the hamsters age?"
age = gets.chomp.to_s

if age == ""
	age = nil
end

puts "hamsters name is #{name}"
puts "the volume is #{volume}"
puts "fur color is #{fur}"
puts "Can you adopt? #{adopt}"
puts "the hamsters is #{age}"