require './lib/game.rb'

describe "Crazy Words" do
    it "Default word exists" do
        game = Game.new
        
        expect( game.original_word.length ).to be > 0        
    end

    it "Default word is scrambled" do
        game = Game.new
        
        expect( game.scrambled_word.length ).to be > 0        
    end

    it "Validate word" do
        game = Game.new
        
        expect( game.isWordCorrect "CUCUMBER" ).to be true        
    end

    it "Validate case insensitive word" do
        game = Game.new
        
        expect( game.isWordCorrect "cucumber" ).to be true        
    end

    it "Initialize with 3 attempts" do
        game = Game.new
        
        expect( game.attemps ).to be 3        
    end

    it "Attempts are decreased" do
        game = Game.new
        game.decrease_attempt
        expect( game.attemps ).to be 2        
    end
end
