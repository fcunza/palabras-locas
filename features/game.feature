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

    Scenario: Usuario falló el máximo de intentos
        Given Visitar la pagina inicial
        When Fallo 3 veces
        And Elige reintentar 
        Then mostrara la palabra "Tienes 3 intentos"
    