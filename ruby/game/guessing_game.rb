class GuessGame

	def initialize(word)
		@word = word.split('')
		@correct_guess_arr = []
		@word_arr << word
	end

	def number_of_guesses(word)
		guess_limit = word.length + 1
	end

	def start_game()
		
	end

end

puts "Enter a word"
my_word = gets.chomp

guess = GuessGame.new(my_word)
word_arr = guess.split_word(my_word)
guess_number = guess.number_of_guesses(word_arr)
puts "You have #{guess_number} times to get the answer"
print @word

while guess_number > 0 
	guess_letter = gets.chomp
	guess.check_guess(word_arr, guess_letter)
	guess_number -= 1
end



