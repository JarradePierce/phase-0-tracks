
require_relative "guessing_game"

describe GuessGame do
	let(:word) { GuessGame.new("shark")}

	it "takes a string and splits to array" do
		expect(word.split_word("shark")).to eq ['s','h','a','r','k']
	end

	it "givs a number of attempts avaliable equal to the length of the word" do
		expect(word.number_of_guesses("shark")).to eq 5
	end

	it "takes a user guess and returns the value if correct" do
		expect(word.check_guess("shark", 's')).to eq 's'
	end
end












