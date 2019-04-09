require_relative '../lib/caesar_cipher'

describe "the one_letter_transcript method" do

	it "transcripts a letter to a number"	do

	expect(one_letter_transcript("a")).to eq(97)
	
	end
end

describe "the letter_move method" do

	it "moves a letter from its place to several letters after that" do
		expect(letter_move("a", 3)).to eq ("d")
		expect(letter_move("k", 6)).to eq ("q")
	end
end