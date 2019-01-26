Feature: Palabras locas
    Scenario: Usuario acertó, mostrar siguiente palabra
        Given Visitar la pagina inicial
        When Ingresa la palabra "REFRIGERADOR"
        Then mostrara el texto "Palabra acertada"        

    Scenario: Mostrar mensaje de error al fallar
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        Then mostrara el texto "Palabra errada"
    
     Scenario: Cantidad de intentos iniciales
        Given Visitar la pagina inicial
        Then mostrara el texto "Tienes 3 intentos"
    
    Scenario: Reducir intentos por fallo
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        Then mostrara el texto "Tienes 2 intentos"

    Scenario: Usuario falló el máximo de intentos
        Given Visitar la pagina inicial
        When Fallo 3 veces
        Then mostrara el texto "Perdiste"

    Scenario: Reintentar juego por perdedor
        Given Visitar la pagina inicial
        When Fallo 3 veces
        And Elige jugar de nuevo 
        Then mostrara el texto "Tienes 3 intentos"
    
    Scenario: Reintentar juego por que gane y me gusto
        Given Visitar la pagina inicial
        When acerto 5 veces
        And Elige jugar de nuevo
        Then mostrara el texto "Tienes 3 intentos"

    Scenario: Usuario gano luego de 5 aciertos
        Given Visitar la pagina inicial
        When acerto 5 veces
        Then mostrara el texto "Ganaste"

    Scenario: Mostrar pista
        Given Visitar la pagina inicial
        Then mostrara el texto "Tan frio como el corazón de tu ex"
