Feature: Palabras locas

    Scenario: Mostrar respuesta correcta
        Given Visitar la pagina inicial
        When Ingresa la palabra "REFRIGERADOR"
        Then Mostrará mensaje "Ganaste"

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

    