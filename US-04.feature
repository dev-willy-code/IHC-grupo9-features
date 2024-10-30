

  # US-04 - Recuperación de contraseña
  Scenario: Enviar enlace de recuperación de contraseña
    Given que el usuario abre la pantalla de inicio de sesión en [PredictMed]
    And selecciona la opción de "¿Olvidaste tu contraseña?"
    When ingresa su correo electrónico registrado
    Then el sistema enviará un enlace de recuperación a su correo
    And mostrará un mensaje de confirmación

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: Error en recuperación de contraseña por correo no registrado
    Given que el usuario abre la pantalla de inicio de sesión en [PredictMed]
    And selecciona la opción de "¿Olvidaste tu contraseña?"
    When ingresa un correo electrónico no registrado
    Then el sistema mostrará un mensaje de error indicando que el correo no está registrado

    Examples:
      | PredictMed     | mensaje de error                       |
      | "PredictMed"   | "Correo electrónico no registrado"     |

  