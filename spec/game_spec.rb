require './lib/Game.rb'

describe "Crazy Words" do
    it "Default word exists" do
        game = Game.new
        
        expect( game.original_word.length ).to be > 0        
    end

    it "Default word is scrambled" do
        game = Game.new
        
        expect( game.scrambled_word.length ).to be > 0        
    end
end