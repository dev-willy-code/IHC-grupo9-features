
  # US-16 - Búsqueda de doctores
  Scenario: Búsqueda por análisis big data
    Given que la persona que busca prevenir enfermedades realizó el test de evaluación de síntomas
    And ingresa al apartado de “Atiendete con los mejores doctores”
    Then aparecerá una lista de doctores basada en el estudio de la evaluación previa

    Examples:
      | Resultado de búsqueda |
      | "Lista de doctores A" |
      | "Lista de doctores B" |

  Scenario: Búsqueda tradicional
    Given que la persona que busca prevenir enfermedades ingresa al apartado de “profesionales de la salud”
    And ingresa “nombre y apellido del doctor”, “país”, “ciudad” y “especialidad”
    Then la aplicación mostrará como resultado los doctores que cumplan con dichas características

    Examples:
      | Nombre       | País       | Ciudad       | Especialidad     |
      | "Dr. Pérez"  | "México"   | "CDMX"       | "Cardiología"    |
      | "Dra. García"| "Argentina"| "Buenos Aires"| "Endocrinología" |

  Scenario: Búsqueda por especialidad
    Given que la persona que busca prevenir enfermedades ingresa al apartado de “profesionales de la salud”
    And selecciona la categoría o “especialidad”
    Then la aplicación mostrará los doctores que cumplan con dicha especialidad

    Examples:
      | Especialidad    |
      | "Pediatría"     |
      | "Dermatología"  |

 