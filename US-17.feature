

  # US-17 - Boleta de citas
  Scenario: Generación automática de boleta
    Given que el usuario ha reservado una cita médica
    When se completa la reserva en la aplicación
    Then se genera automáticamente una boleta digital con los detalles de la cita
    And el usuario recibe la boleta en su correo electrónico

    Examples:
      | Tipo de cita        | Correo de usuario     |
      | "Consulta general"  | "user1@example.com"   |
      | "Examen de sangre"  | "user2@example.com"   |

  Scenario: Descarga de boleta desde la aplicación
    Given que el usuario desea un comprobante de su cita médica
    When entra a su perfil de citas en la aplicación
    Then puede descargar la boleta digital en formato PDF y visualizar los detalles de la cita

    Examples:
      | Tipo de cita        |
      | "Consulta general"  |
      | "Examen de sangre"  |

  