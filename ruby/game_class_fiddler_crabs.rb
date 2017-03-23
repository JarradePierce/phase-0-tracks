#1 One user can enter a word (or phrase, if you would like your game to support that), 
#and another user attempts to guess the word.

#2. Guesses are limited, and the number of guesses available is related to the length of 
#the word.

#3. Repeated guesses do not count against the user.

#4. The guessing player receives continual feedback on the current state of the word. 
#So if the secret word is "unicorn", the user will start out seeing something like 
#"_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

#5. The user should get a congratulatory message if they win, and a taunting message if 
#they lose.


class Game_Class
	attr_accessor :guess_limit, :player_guesses, :correct_guesses

	def initialize(word)
		@word = word.split('')
		@guess_limit = @word.length + 1
		@player_guesses = []
		@already_guessed = []
		@correct_guesses = []
	end

	def guesses(guess)

		if @already_guessed.include?(guess)
			puts "You already guessed that letter"
		elsif guess == ""
			puts "You cannot guess nothing"
		elsif @word.include?(guess)
			@correct_guesses.push(guess)
			@player_guesses.push(guess)
		else
			@player_guesses.push(guess)
		end
		@already_guessed.push(guess)
		#p @already_guessed

		@word.each do |letter|
			if @correct_guesses.include?(letter)
				letter
			else
				letter = "_"
			end
			print letter
		end
	end

	def game_over
		did_win = false
		if @correct_guesses.length == @word.length
			puts "\nYou win"
			puts "The word was #{@word.join('')}"
			did_win = true
		else
			puts "\nYou lose!"
			puts "The word was #{@word.join('')}"
			did_win = false
		end
	end

end

game = Game_Class.new("merica")


until game.player_guesses.length == game.guess_limit
	puts "\nguess a letter"
	guess = gets.chomp

	if guess == "n"
		break
	end

	game.guesses(guess)
end
game.game_over












