
  # US-03 - Iniciar sesión
  Scenario: Inicio de sesión exitoso
    Given que el usuario tiene una cuenta en [PredictMed]
    And abre la aplicación
    When ingresa sus credenciales correctamente
    Then el sistema lo llevará a la pantalla principal de la aplicación
    And le mostrará su información de salud

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: Inicio de sesión fallido por contraseña incorrecta
    Given que el usuario tiene una cuenta en [PredictMed]
    And abre la aplicación
    When ingresa una contraseña incorrecta
    Then el sistema mostrará un mensaje de error indicando que la contraseña es incorrecta
    And no permitirá el acceso a la cuenta

    Examples:
      | PredictMed     | mensaje de error               |
      | "PredictMed"   | "Contraseña incorrecta"        |

  