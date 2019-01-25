Feature: Palabras locas

    Scenario: Mostrar Palabra
        Given Visitar la pagina inicial
        Then mostrara la palabra "EMUCRCBU"
    
    Scenario: Mostrar respuesta correcta
        Given Visitar la pagina inicial
        When Ingresa la palabra "CUCUMBER"
        Then Mostrará mensaje "Respuesta correcta"

