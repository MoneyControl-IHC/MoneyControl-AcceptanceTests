Feature: Registro de préstamo

    Como prestamista
    quiero registrar un préstamo realizado a un cliente
    para hacer un seguimiento claro de todos mis préstamos

Scenario: Registro de préstamo

    Given que el usuario se encuentra en la sección de préstamos
    When selecciona la opcion "Nuevo" y completa la información del préstamo
    And da click en "registrar"
    Then aparece el <mensaje> 
Example:
    | Nombre_cliente | Monto | Fecha_prestamo   | Plazo_prestamo | N_cuotas | mensaje          |
    | Ursula Blas    | 975   | 2023-05-31       | 2023-07-27     | 2        | Registro exitoso |
    | Juan Sanchez   | 1025  | 2023-06-04       | 2023-10-24     | 4        | Registro exitoso |

Scenario: Cancelar registro de préstamo
    Given que el usuario se encuentra en la sección de préstamos
    When selecciona la opcion "Nuevo" 
    And da click en "cancelar"
    Then aparece el <mensaje> 
Example:
    |  mensaje                             | 
    | Registro de prestamo cancelado       |