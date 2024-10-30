
  # US-10 - Cambiar contraseña
  Scenario: Cambiar contraseña exitosamente
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de seguridad
    When cambia su contraseña y guarda los cambios
    Then el sistema debe mostrar un mensaje de confirmación de cambio exitoso
    And solicitar que el usuario vuelva a iniciar sesión con la nueva contraseña

    Examples:
      | PredictMed     | mensaje de confirmación                      |
      | "PredictMed"   | "Contraseña cambiada exitosamente"           |

  Scenario: Error al cambiar contraseña por datos inválidos
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a la configuración de seguridad
    When intenta cambiar su contraseña con datos inválidos
    Then el sistema debe mostrar un mensaje de error indicando los campos incorrectos
    And no debe guardar los cambios hasta que los datos sean corregidos

    Examples:
      | PredictMed     | mensaje de error                      |
      | "PredictMed"   | "Datos inválidos, verifique la información" |

  