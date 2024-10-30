  # US-24 - Registro de presión arterial
  Scenario: Alerta de hipertensión
    Given que el usuario tiene antecedentes de hipertensión
    When los datos de presión registrados se mantienen consistentemente elevados
    Then la aplicación envía una alerta indicando un riesgo alto de hipertensión
    And recomienda consultar a un especialista para evaluar el tratamiento

    Examples:
      | Presión arterial promedio |
      | "140/90 mmHg"             |
      | "150/95 mmHg"             |
