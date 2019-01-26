Feature: Palabras locas
    Scenario: Usuario acertó, mostrar siguiente palabra
        Given Visitar la pagina inicial
        When Ingresa la palabra "REFRIGERADOR"
        Then mostrara la palabra "Palabra acertada"        

    Scenario: Mostrar respuesta incorrecta
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        Then Mostrará mensaje "Respuesta incorrecta"
    
     Scenario: Cantidad de intentos iniciales
        Given Visitar la pagina inicial
        Then mostrara la palabra "Tienes 3 intentos"
    
    Scenario: Reducir intentos por fallo
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        And Vuelvo a intentar
        Then mostrara la palabra "Tienes 2 intentos"

    Scenario: Usuario falló el máximo de intentos
        Given Visitar la pagina inicial
        When Fallo 3 veces
        Then mostrara la palabra "Perdiste"

    Scenario: Reintentar juego por perdedor
        Given Visitar la pagina inicial
        When Fallo 3 veces
        And Elige jugar de nuevo 
        Then mostrara la palabra "Tienes 3 intentos"
    
    Scenario: Reintentar juego por que gane y me gusto
        Given Visitar la pagina inicial
        When acerto 5 veces
        And Elige jugar de nuevo
        Then mostrara la palabra "Tienes 3 intentos"

    Scenario: Usuario gano luego de 5 aciertos
        Given Visitar la pagina inicial
        When acerto 5 veces
        Then mostrara la palabra "Ganaste"


