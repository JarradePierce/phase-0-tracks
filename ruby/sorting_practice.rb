#sorting algorithm 
=begin
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
=end

=begin
#Bubble sort algorithm 
def bubble_sort(array)
	n = array.length

	loop do 
		swapped = false
		(n - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end


a = [1, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(a)
=end


class Array
	def quicksort
		return [] if empty?

		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))

		return *left.quicksort, pivot, *right.quicksort 
	end
end

arr = [34, 2, 1, 5, 3]
p arr.quicksort











