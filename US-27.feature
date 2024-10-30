
  # US-27 - Visualización de perfiles médicos
  Scenario: Perfiles detallados
    Given que el usuario está buscando un médico específico
    When revisa los resultados de búsqueda en la aplicación
    Then puede ver la experiencia profesional, especialidad y reseñas de cada doctor
    And seleccionar el médico que mejor se adapte a sus necesidades de salud

    Examples:
      | Doctor         | Especialidad        | Reseña                |
      | "Dr. Pérez"    | "Cardiología"       | "Excelente trato"     |
      | "Dra. García"  | "Endocrinología"    | "Muy profesional"     |

