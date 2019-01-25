require './lib/Game.rb'

describe "Crazy Words" do
    it "Default word exists" do
        game = Game.new
        
        expect( game.original_word.length ).to be > 0        
    end
end
