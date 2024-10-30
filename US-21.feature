
  # US-21 - Consulta en línea con médicos
  Scenario: Agendar consulta en línea
    Given que el usuario necesita orientación médica
    When selecciona la opción de citas
    Then puede elegir un médico disponible y agendar la consulta
    And recibe un enlace para unirse a la consulta en el horario programado

    Examples:
      | Médico          | Horario     |
      | "Dr. Pérez"     | "10:00 AM"  |
      | "Dra. García"   | "2:00 PM"   |

  Scenario: Notificación previa a la consulta
    Given que el usuario tiene una consulta en línea agendada
    When faltan 15 minutos para la consulta
    Then la app envía una notificación recordándole el horario
    And proporciona el enlace para unirse a la videollamada

    Examples:
      | Horario   |
      | "10:00 AM"|
      | "2:00 PM" |

  