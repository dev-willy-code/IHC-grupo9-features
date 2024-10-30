  # US-28 - Compatibilidad con plataforma iOS
  Scenario: Acceso desde iOS
    Given que la persona que busca prevenir enfermedades usa un dispositivo iOS
    And descarga la aplicación
    When accede a PredictMed desde iOS
    Then la aplicación deberá funcionar sin problemas
    And proporcionar la mejor experiencia

    Examples:
      | Dispositivo iOS |
      | "iPhone 12"     |
      | "iPad Pro"      |

