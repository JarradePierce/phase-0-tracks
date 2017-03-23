
require_relative "game_class_fiddler_crabs"

describe Game_Class do

	let(:word){Game_Class.new("merica")} 
	it "takes a string and splits it into a array" do	
		expect(word.guess_limit).to eq 7
	end

	it "takes a guess and checks if its correct" do
		expect(word.guesses('r')).to eq ["m", "e", "r", "i", "c", "a"]
	end

	it "Checks if the player has won the game" do
		expect(word.game_over).to eq false
	end
end