
  # US-26 - Pago de servicios médicos
  Scenario: Pago seguro
    Given que el usuario desea pagar una consulta médica
    When selecciona un método de pago en la aplicación
    Then puede completar la transacción de forma segura dentro de la app
    And recibe una factura digital como comprobante de pago

    Examples:
      | Método de pago   |
      | "Tarjeta de crédito" |
      | "PayPal"             |

  Scenario: Confirmación de pago exitoso
    Given que el usuario ha realizado un pago por un servicio médico
    When la transacción se completa con éxito
    Then la aplicación muestra una notificación de confirmación
    And envía un recibo detallado al correo electrónico del usuario

    Examples:
      | Servicio médico      | Correo de usuario          |
      | "Consulta"           | "user1@example.com"        |
      | "Examen de laboratorio" | "user2@example.com"    |

 