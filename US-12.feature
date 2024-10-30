
  # US-12 - Desactivar cuenta
  Scenario: Desactivar cuenta exitosamente
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de cuenta
    When selecciona la opción de desactivar cuenta y confirma
    Then el sistema debe mostrar un mensaje de confirmación de desactivación exitosa
    And debe cerrar la sesión automáticamente

    Examples:
      | PredictMed     | mensaje de confirmación                        |
      | "PredictMed"   | "Cuenta desactivada exitosamente"             |

  Scenario: Cancelar desactivación de cuenta
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de cuenta
    When selecciona la opción de desactivar cuenta pero cancela la confirmación
    Then el sistema debe mantener la cuenta activa y no cerrar la sesión

    Examples:
      | PredictMed     |
      | "PredictMed"   |

 