
  # US-14 - Biblioteca médica
  Scenario: Lectura general
    Given que la persona inicia sesión en la aplicación
    And ingresa al apartado de “Padecimientos”
    When busca el padecimiento
    Then al darle click a la opción a elegir lanzará un informe del tema elegido

    Examples:
      | Padecimiento a buscar |
      | "Dolor de cabeza"     |
      | "Diabetes"            |
      | "Asma"                |

Feature: Funcionalidades de la aplicación PredictMed

 