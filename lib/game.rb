class Game
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
        3
    end
end
