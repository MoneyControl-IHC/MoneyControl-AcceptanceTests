Feature: Calcular monto a pagar

    Como prestamista
    Deseo calcular la cantidad de renovación
    Para desembolsar el dinero correctamente

Scenario: Apertura de la calculadora

    Given que el emprendedor se encuentra en la pantalla principal de la plataforma
    When seleccione el botón “ingresar a la calculadora”
    Then se le desplegará un panel mostrando la calculadora

Scenario: Calcular reembolso
    Given que el emprendedor se encuentra en la pantalla de la calculadora
    When ingrese una <cantidad> y <interes>
    And seleccione el botón “calcular” 
    Then aparecerá un <mensaje> mostrando la <cantidad_calculada>
Example:
    | cantidad | interes |               mensaje                    | cantidad_calculada |
    |  4200    | 6%      | La cantidad de dinero a desembolsar sería| 4464               |

Scenario: Calcular reembolso erroneo
    Given que el emprendedor se encuentra en la pantalla de la calculadora
    When no llegue a completar los campos requeridos
    And seleccione el botón “calcular” 
    Then aparecerá un <mensaje>
Example:
    | cantidad | interes |  mensaje                             | 
    |  0       | 4%      | Por favor, complete todos los campos |
    |  1610    | 0%      | Por favor, complete todos los campos |