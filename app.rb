require 'sinatra'
require './lib/game.rb'

get '/' do
    attempt = params[:attempt].to_i

    if attempt == 0
        @@game = Game.new
    end

    @scrambled_word = @@game.scrambled_word
    @attempts = @@game.attempts
    @status_message = @@game.status_message
    @clue = @@game.clue
    erb :game
end

post '/validate' do
    answer = params[:answer]    
    @result_message = ""
    is_correct = @@game.isWordCorrect answer
    if is_correct
        @@game.success +=1
        if @@game.success == 5
            return erb:result_win
        end
        @@game.status_message = "Palabra acertada"    
        @@game.go_next_word    
        @scrambled_word = @@game.scrambled_word
        @attempts = @@game.attempts
        @status_message = @@game.status_message
        @clue = @@game.clue
        return erb :game  
            
    else 
        @@game.status_message = "Palabra errada"
        @@game.decrease_attempt
        if @@game.attempts <= 0        
            return erb :result_fail        
        end
        @scrambled_word = @@game.scrambled_word
        @attempts = @@game.attempts
        @status_message = @@game.status_message
        @clue = @@game.clue

        return erb :game
    end
end
