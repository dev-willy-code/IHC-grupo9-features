
  # US-23 - Sincronización de datos de sueño
  Scenario: Análisis de calidad de sueño
    Given que el usuario usa su dispositivo wearable durante la noche
    When sincroniza sus datos de sueño con la aplicación
    Then la app analiza la duración y calidad del sueño
    And proporciona recomendaciones personalizadas para mejorar el descanso

    Examples:
      | Calidad de sueño | Duración promedio |
      | "Buena"          | "7 horas"         |
      | "Regular"        | "5 horas"         |

  Scenario: Notificación de falta de sueño
    Given que el usuario tiene un historial de sueño insuficiente
    When su promedio de sueño registrado cae por debajo de 6 horas
    Then la app envía una notificación alertando sobre la falta de descanso
    And sugiere acciones como reducir la exposición a pantallas y evitar bebidas estimulantes

    Examples:
      | Promedio de sueño |
      | "5 horas"         |
      | "4.5 horas"       |

 