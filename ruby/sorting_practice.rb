def sortedlist(array, reverse = false)
	if reverse == false
		array.sort {|a,b| a <=> b}
	else
		array.sort {|a,b| b <=> a}
	end
end

disney_movies  = ["Lion King", "Little Mermaid", "Lady and the Tramp", "Finding Nemo", "Toy Stoy", "Tangled"]

puts  "In alphabetical order: #{sortedlist(disney_movies, false)}"
puts  "In reverse: #{sortedlist(disney_movies, true)}"






