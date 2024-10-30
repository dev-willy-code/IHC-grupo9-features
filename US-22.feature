
  # US-22 - Seguimiento de actividad física
  Scenario: Registro automático de actividad
    Given que el usuario utiliza un dispositivo wearable
    When realiza actividad física como caminar o correr
    Then la app registra automáticamente la actividad
    And muestra un resumen diario de calorías quemadas y pasos realizados

    Examples:
      | Actividad | Calorías quemadas | Pasos realizados |
      | "Caminar" | 200               | 3000             |
      | "Correr"  | 500               | 7000             |

 