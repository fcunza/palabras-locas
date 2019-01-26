require './lib/word.rb'

class Game
    def initialize
        @attempts = 3
        @original_words = [
            Word.new("REFRIGERADOR","Tan frio como el corazón de tu ex"),
            Word.new("LAVADORA","Da vuelvas y vueltas "),
            Word.new("BILLETERA","Te gusta tenerla gorda"),
            Word.new("ESCOBA","Es largo con pelos"),
            Word.new("LICUADORA","Tiene velocidades"),
            Word.new("ZANCUDO","Te chupa la sangre"),
            Word.new("CERVEZA","Te deja mareado"),
            Word.new("CELULAR","No puedes vivir sin eso"),
            Word.new("PROFESOR","Es hemano de Berlin"),
            Word.new("VENTILADOR","Te deja despeinado"),
            Word.new("TELEVISOR","Te entretiene cuando se prende"),
            Word.new("COMPUTADORA","Tu mejor aliado"),
            Word.new("EDIFICIO","Si es muy alto da miedo"),
            Word.new("ELEFANTE","Siempre va pa' lante"),
            Word.new("ANACONDA","Te abraza hasta la muerte"),
            Word.new("ORNITORRINCO","Es un detective"),
            Word.new("DENTISTA","Te deja con la boca abierta")]
        @status_message = ""
        @current_word_index = 0
        @current_word = @original_words[0].word
        @success =0
    end

    def current_word
        @current_word = @original_words[@current_word_index].word        
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

    def clue
        @original_words[@current_word_index].clue
    end
end
