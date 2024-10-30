

  # US-06 - Actualización de perfil de usuario
  Scenario: Actualizar información personal
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a su perfil
    When actualiza su información personal y guarda los cambios
    Then el sistema debe mostrar un mensaje de confirmación de actualización exitosa
    And debe reflejar los cambios en su perfil

    Examples:
      | PredictMed     | mensaje de confirmación                 |
      | "PredictMed"   | "Perfil actualizado correctamente"      |

  Scenario: Error en actualización por datos inválidos
    Given que el usuario ha iniciado sesión en [PredictMed]
    And accede a su perfil
    When intenta guardar la información con datos inválidos
    Then el sistema debe mostrar un mensaje de error indicando los campos inválidos
    And no debe guardar los cambios hasta que los datos sean corregidos

    Examples:
      | PredictMed     | mensaje de error                 |
      | "PredictMed"   | "Datos inválidos"                |

  