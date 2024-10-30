
  # US-18 - Reserva de citas médicas
  Scenario: Reserva de citas
    Given que el usuario necesita agendar una cita médica
    When selecciona un médico y un horario disponible en la aplicación
    Then puede reservar la cita directamente desde la app
    And recibe una confirmación de la reserva en su correo electrónico

    Examples:
      | Médico         | Horario     |
      | "Dr. Pérez"    | "10:00 AM"  |
      | "Dra. García"  | "2:00 PM"   |

  