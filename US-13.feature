
  # US-13 - Contacto con soporte
  Scenario: Contactar soporte exitosamente
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la sección de contacto
    When envía un mensaje a soporte
    Then el sistema debe mostrar un mensaje de confirmación de recepción de la solicitud
    And el equipo de soporte deberá contactar al usuario en breve

    Examples:
      | PredictMed     | mensaje de confirmación                       |
      | "PredictMed"   | "Solicitud enviada al equipo de soporte"      |

  Scenario: Error al contactar soporte por mensaje vacío
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la sección de contacto
    When intenta enviar un mensaje vacío a soporte
    Then el sistema debe mostrar un mensaje de error indicando que el mensaje no puede estar vacío

    Examples:
      | PredictMed     | mensaje de error                      |
      | "PredictMed"   | "El mensaje no puede estar vacío"     |

 