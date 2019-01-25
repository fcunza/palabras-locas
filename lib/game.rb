class Game
    def initialize
        @attempts = 3
        @original_words = ["REFRIGERADOR","LAVADORA","COCINA","LICUADORA","TOSTADORA"]
        @current_word = @original_words[0]
    end

    def current_word
        @current_word 
    end

    def scrambled_word
        @current_word.split('').shuffle.join
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
end
