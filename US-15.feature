
  # US-15 - Gestión de perfiles
  Scenario: Guardar registro de paciente
    Given que el profesional de la salud realizó un registro por QR
    When le da click a “finalizar registro” y después a “Guardar Paciente”
    Then quedará guardada la interacción con todo lo evaluado

    Examples:
      | Método de registro |
      | "QR"               |
      | "Manual"           |

  Scenario: Ver registro de paciente
    Given que el profesional de la salud ha registrado la evaluación de sus pacientes
    When ingresa al apartado de pacientes y le da click a “Ver evaluación”
    Then podrá ver y analizar el paciente elegido

    Examples:
      | Paciente             |
      | "Paciente A"         |
      | "Paciente B"         |

  Scenario: Eliminar registro de paciente
    Given que el profesional de la salud ha registrado la evaluación de sus pacientes
    When ingresa al apartado de pacientes y selecciona “eliminar”
    Then el registro de paciente será eliminado de la lista

    Examples:
      | Paciente a eliminar |
      | "Paciente A"        |
      | "Paciente B"        |

 