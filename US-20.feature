
  # US-20 - Recordatorios de citas médicas
  Scenario: Recordatorio previo a la cita
    Given que el usuario tiene una cita programada
    When falta un día para la cita
    Then el usuario recibe una notificación en su dispositivo móvil
    And se le recuerda la fecha, hora, doctor y ubicación de la cita

    Examples:
      | Fecha de cita | Hora de cita | Doctor        | Ubicación     |
      | "2023-11-01"  | "10:00 AM"   | "Dr. Pérez"   | "Consultorio 1"|
      | "2023-11-02"  | "2:00 PM"    | "Dra. García" | "Consultorio 2"|

  Scenario: Recordatorio el día de la cita
    Given que el usuario tiene una cita programada para hoy
    When faltan dos horas para la cita
    Then el usuario recibe un recordatorio en su dispositivo móvil
    And puede ver detalles adicionales de la ubicación al hacer click en la notificación

    Examples:
      | Hora de cita | Doctor        | Ubicación     |
      | "10:00 AM"   | "Dr. Pérez"   | "Consultorio 1"|
      | "2:00 PM"    | "Dra. García" | "Consultorio 2"|

  