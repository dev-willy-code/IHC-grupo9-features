

  # US-05 - Ver resultados de salud
  Scenario: Ver resultados recientes
    Given que el usuario ha iniciado sesión en [PredictMed]
    And tiene resultados de salud recientes
    When selecciona la opción de ver resultados
    Then el sistema le mostrará los resultados de su última evaluación
    And le proporcionará recomendaciones personalizadas

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: No hay resultados disponibles
    Given que el usuario ha iniciado sesión en [PredictMed]
    And no tiene resultados de salud previos
    When selecciona la opción de ver resultados
    Then el sistema le mostrará un mensaje indicando que no hay resultados disponibles

    Examples:
      | PredictMed     | mensaje de información               |
      | "PredictMed"   | "No hay resultados disponibles"      |

  