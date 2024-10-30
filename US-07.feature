            
  # US-07 - Configuración de notificaciones
  Scenario: Activar notificaciones
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de notificaciones
    When activa las notificaciones
    Then el sistema debe enviarle notificaciones sobre sus resultados y recomendaciones

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  Scenario: Desactivar notificaciones
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de notificaciones
    When desactiva las notificaciones
    Then el sistema no debe enviarle ninguna notificación adicional

    Examples:
      | PredictMed     |
      | "PredictMed"   |

  