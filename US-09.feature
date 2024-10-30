
  # US-09 - Historial de resultados
  Scenario: Ver historial de resultados
    Given que el usuario ha iniciado sesión en [PredictMed]
    And tiene un historial de resultados de salud
    When accede a la opción de historial
    Then el sistema debe mostrarle una lista de sus resultados previos

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: Historial vacío
    Given que el usuario ha iniciado sesión en [PredictMed]
    And no tiene resultados previos
    When accede a la opción de historial
    Then el sistema debe mostrar un mensaje indicando que el historial está vacío

    Examples:
      | PredictMed     | mensaje de información                  |
      | "PredictMed"   | "No hay resultados en el historial"     |

 