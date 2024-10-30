# US-02 - Registro de usuario
  Scenario: Registro exitoso
    Given que el usuario abre la aplicación [PredictMed]
    And selecciona la opción de registro
    When ingresa todos los datos requeridos y los envía
    Then el sistema debe crear una cuenta para el usuario
    And mostrar un mensaje de confirmación

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: Registro fallido por falta de datos
    Given que el usuario abre la aplicación [PredictMed]
    And selecciona la opción de registro
    When intenta enviar el formulario sin completar todos los campos requeridos
    Then el sistema mostrará un mensaje de error indicando los campos faltantes
    And no permitirá el registro hasta que se completen los datos

    Examples:
      | PredictMed     | mensaje de error              |
      | "PredictMed"   | "Faltan campos obligatorios"  |
      

  