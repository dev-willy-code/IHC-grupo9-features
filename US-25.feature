
  # US-25 - Sincronización de frecuencia cardíaca
  Scenario: Sincronización automática de datos
    Given que el usuario tiene un dispositivo wearable
    When el dispositivo se conecta a la aplicación
    Then los datos de frecuencia cardíaca se sincronizan automáticamente
    And se muestran en tiempo real en el panel de control de la app

    Examples:
      | Frecuencia cardíaca |
      | "70 bpm"            |
      | "85 bpm"            |

  Scenario: Alertas de frecuencia anormal
    Given que el usuario está monitoreando su frecuencia cardíaca
    When los datos registrados superan los límites normales
    Then la aplicación envía una notificación al usuario
    And se le recomienda realizar una consulta médica

    Examples:
      | Frecuencia cardíaca |
      | "120 bpm"           |
      | "130 bpm"           |
