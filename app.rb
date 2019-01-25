require 'sinatra'
require './lib/game.rb'

get '/' do
    attempt = params[:attempt].to_i

    if attempt == 0
        @@game = Game.new
    end

    @scrambled_word = @@game.scrambled_word
    @attemps = @@game.attemps
    erb :game
end

post '/validate' do
    answer = params[:answer]    
    @result_message = ""
    if @@game.isWordCorrect answer
        @result_message = "Respuesta correcta"        
    else 
        @@game.decrease_attempt                
        @result_message = "Respuesta incorrecta"
    end

    if @@game.attemps == 0
        erb :result_fail
    else
        erb :result
    end
end