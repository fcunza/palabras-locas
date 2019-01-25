require 'sinatra'
require './lib/game.rb'

get '/' do
    @@game = Game.new
    @scrambled_word=@@game.scrambled_word
    erb :game
end

post '/validate' do
    answer = params[:answer]    
    @result_message = ""
    if @@game.isWordCorrect answer
        @result_message = "Respuesta correcta"
    else 
        @result_message = "Respuesta incorrecta"
    end

    erb :result
end