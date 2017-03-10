
class GuessGame
	attr_reader :guess_progress
	
	def initialize(word)
		@word = word
		@guess_progress = "_" * @word.length
		@letters_guessed = []
		@guess_count = 0
	end

	def guess(letter)
		if guessed?(letter)
			return "Guess Again"

		@letters_guessed << letter

		if in_word?(letter)
			@word.chars.each_with_index do |let, ind|
				if let == letter
					@guess_progress[ind] = letter
				end
			end
		end
		end
		@guess_count += 1
	end

	def is_over?
		false
		if @word == @guess_progress
			puts "Win"
			return true
		elsif @guess_count > @word.length
			puts "Lose"
			return true
		end
	end

	def in_word?(letter)
		@word.include?(letter)
	end

	def guessed?(letters)
		@letters_guessed.include?(letters)
	end

end

game = GuessGame.new("pizza")

until game.is_over?
	game.guess(gets.chomp)
	puts game.guess_progress
end

