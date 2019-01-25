Feature: Palabras locas

    Scenario: Mostrar Palabra
        Given Visitar la pagina inicial
        Then mostrara la palabra "EMUCRCBU"
    
    Scenario: Mostrar respuesta correcta
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUCUMBER"
        Then Mostrará mensaje "Respuesta correcta"

    Scenario: Mostrar respuesta incorrecta
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        Then Mostrará mensaje "Respuesta incorrecta"
    
    Scenario: Volver a intentar
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUBERMCU"
        And Vuelvo a intentar
        Then mostrara la palabra "EMUCRCBU"

    Scenario: Cantidad de intentos iniciales
        Given Visitar la pagina inicial
        Then mostrara la palabra "Tienes 3 intentos"

