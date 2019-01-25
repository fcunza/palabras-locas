class Game
    def initialize
        @attempts = 3
    end
    def original_word
        "CUCUMBER"
    end

    def scrambled_word
        "EMUCRCBU"
    end

    def isWordCorrect word
        original_word == word.upcase
    end

    def attemps
        @attempts
    end
    def decrease_attempt
        @attempts -= 1
    end
end