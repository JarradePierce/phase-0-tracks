def letters_algo(letters)
	letters = letters.split('')
	letters.map! {|letter| letter.next}
	
end

def ask_loop
	ask = true
	names_array = []
	while ask == true
		p "Enter your name, enter quit to exit"
		my_name = gets.chomp

		if my_name == "quit"
			ask = false
		else
			names_array.push(my_name)
			p "Are you satisfied with this name?"
			p letters_algo(my_name)
		end
	end
	p names_array
end
ask_loop


