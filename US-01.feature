# US-01 - Compatibilidad con la plataforma
  Scenario: Acceso desde Android
    Given que el organizador de eventos sociales usa un dispositivo Android
    And haya descargado la aplicación [PredictMed]
    When acceda a la aplicación desde su dispositivo [Android]
    Then la aplicación deberá funcionar sin problemas
    And proporcionar la mejor experiencia al usuario

    Examples:
      | Android   | PredictMed     |
      | "Samsung" | "PredictMed"   |
      | "Pixel"   | "PredictMed"   |
      | "OnePlus" | "PredictMed"   |

  Scenario: Dispositivo incompatible
    Given que el organizador de eventos sociales usa un dispositivo con otro sistema operativo
    When intente descargar la aplicación [PredictMed]
    Then la aplicación mostrará un mensaje de error indicando que el dispositivo no es compatible
    And no permitirá la descarga de la aplicación

    Examples:
      | sistema operativo | PredictMed     | mensaje de error               |
      | "iOS"             | "PredictMed"   | "Dispositivo no compatible"    |
      | "Windows Phone"   | "PredictMed"   | "Dispositivo no compatible"    |
      | "BlackBerry OS"   | "PredictMed"   | "Dispositivo no compatible"    |
      
 