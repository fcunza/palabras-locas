require 'sinatra'
require './lib/Game.rb'

get '/' do
    game = Game.new
    @palabra=game.scrambled_word
    erb :game
end
