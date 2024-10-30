

  # US-08 - Compartir resultados con el médico
  Scenario: Compartir resultados exitosamente
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a sus resultados de salud
    When selecciona la opción de compartir y elige un contacto médico
    Then el sistema debe enviar los resultados al contacto seleccionado
    And mostrar un mensaje de confirmación de envío exitoso

    Examples:
      | PredictMed     | mensaje de confirmación              |
      | "PredictMed"   | "Resultados enviados exitosamente"   |

  Scenario: Error al compartir por contacto no válido
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a sus resultados de salud
    When intenta compartir los resultados con un contacto no válido
    Then el sistema debe mostrar un mensaje de error indicando que el contacto es incorrecto

    Examples:
      | PredictMed     | mensaje de error                     |
      | "PredictMed"   | "Contacto no válido"                 |

  