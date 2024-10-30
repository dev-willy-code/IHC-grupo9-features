
  # US-11 - Recuperación de contraseña
  Scenario: Solicitud de recuperación de contraseña
    Given que el usuario olvidó su contraseña
    When selecciona la opción de recuperación de contraseña
    Then el sistema debe enviar un enlace de recuperación al correo electrónico registrado

    Examples:
      | PredictMed     | mensaje de confirmación                    |
      | "PredictMed"   | "Correo de recuperación enviado"           |

  Scenario: Error en recuperación de contraseña por correo no registrado
    Given que el usuario intenta recuperar su contraseña
    When ingresa un correo electrónico no registrado
    Then el sistema debe mostrar un mensaje de error indicando que el correo no está asociado a ninguna cuenta

    Examples:
      | PredictMed     | mensaje de error                        |
      | "PredictMed"   | "Correo no registrado"                  |

  