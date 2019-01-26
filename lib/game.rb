require 'palabra.rb'

class Game
    def initialize
        @attempts = 3
        @original_words = [
            Palabra.new("REFRIGERADOR", ""),
            Palabra.new("LAVADORA", ""),
            Palabra.new("COCINA", ""),
            Palabra.new("LICUADORA", ""),
            Palabra.new("TOSTADORA", "")]
        @status_message = ""
        @current_word_index = 0
        @current_word = @original_words[0].palabra
        @success =0
    end

    def current_word
        @current_word = @original_words[@current_word_index].palabra        
    end

    def scrambled_word
        current_word.split('').shuffle.join
    end

    def isWordCorrect word
        current_word == word.upcase
    end

    def attempts
        @attempts
    end

    def decrease_attempt
        @attempts -= 1
    end    

    def original_words
        @original_words   
    end

    def status_message=(message)
        @status_message = message            
    end

    def status_message
        @status_message          
    end

    def success=(success)
        @success = success            
    end

    def success
        @success          
    end
    
    def go_next_word
        @current_word_index += 1
    end
end
