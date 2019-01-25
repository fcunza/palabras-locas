require './lib/game.rb'

describe "Crazy Words" do
    it "Default word exists" do
        game = Game.new
        
        expect( game.current_word.length ).to be > 0        
    end

    it "Default word is scrambled" do
        game = Game.new
        
        expect( game.scrambled_word.length ).to be > 0        
    end

    it "Validate word" do
        game = Game.new
        
        expect( game.isWordCorrect "REFRIGERADOR" ).to be true        
    end

    it "Validate case insensitive word" do
        game = Game.new
        
        expect( game.isWordCorrect "refrigerador" ).to be true        
    end

    it "Initialize with 3 attempts" do
        game = Game.new
        
        expect( game.attempts ).to be 3        
    end

    it "Attempts are decreased" do
        game = Game.new
        game.decrease_attempt
        expect( game.attempts ).to be 2        
    end

    it "Words list" do
        game = Game.new
        expect( game.original_words.length ).to be > 0
    end

end
