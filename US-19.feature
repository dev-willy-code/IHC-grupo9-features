
  # US-19 - Eliminación de citas
  Scenario: Eliminación exitosa de citas
    Given que el usuario tiene una cita programada
    When selecciona la opción de eliminar la cita en su perfil
    Then la cita se elimina de su agenda

    Examples:
      | Cita a eliminar      |
      | "Consulta general"   |
      | "Examen de sangre"   |

 