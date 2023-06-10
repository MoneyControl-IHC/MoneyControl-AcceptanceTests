Feature: Visualizar préstamos

    Como usuario deseo contar con un panel donde pueda visualizar los préstamos a cobrar
    para poder acceder con mayor facilidad a esa informacion

Scenario: Visualizar préstamos

    Given que el cliente se encuentra en la pantalla principal de la plataforma
    When el cliente seleccione "Visualizar préstamos"
    Then se desplegará un panel donde se podrá visualizar los prestamos por cobrar
Examples:
    | Nombre_cliente | Monto | Fecha_pago       | Destacar   |
    | Ursula Blas    | 975   | 2023-06-15  | False      |
    | Juan Sanchez   | 1025  | 2023-06-20  | False      |

Scenario: Destacar préstamos
    Given que el cliente se encuentra en la pantalla principal
    When el cliente seleccione "Visualizar préstamos"
    And se despliega el panel de prestamos por cobrar
    Then hara click en la opción "Destacar" de un préstamo
    And la aplicación generara un recordatorio para ese prestamo.
Example:
    | Nombre_cliente | Monto | Fecha       | Destacar   |
    | Miguel Ocampo  | 975   | 2023-06-15  | True       |
