require './lib/palabra.rb'

class Game
    def initialize
        @attempts = 3
        @original_words = [
            Palabra.new("REFRIGERADOR","Tan frio como el corazón de tu ex"),
            Palabra.new("LAVADORA","Da vuelvas y vueltas "),
            Palabra.new("BILLETERA","Te gusta tenerla gorda"),
            Palabra.new("ESCOBA","Es largo con pelos"),
            Palabra.new("LICUADORA","Tiene velocidades"),
            Palabra.new("ZANCUDO","Te chupa la sangre"),
            Palabra.new("CERVEZA","Te deja mareado"),
            Palabra.new("CELULAR","No puedes vivir sin eso"),
            Palabra.new("PROFESOR","Es hemano de Berlin"),
            Palabra.new("VENTILADOR","Te deja despeinado"),
            Palabra.new("TELEVISOR","Te entretiene cuando se prende"),
            Palabra.new("COMPUTADORA","Tu mejor aliado"),
            Palabra.new("EDIFICIO","Si es muy alto da miedo"),
            Palabra.new("ELEFANTE","Siempre va pa' lante"),
            Palabra.new("ANACONDA","Te abraza hasta la muerte"),
            Palabra.new("ORNITORRINCO","Es un detective"),
            Palabra.new("DENTISTA","Te deja con la boca abierta")]
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
