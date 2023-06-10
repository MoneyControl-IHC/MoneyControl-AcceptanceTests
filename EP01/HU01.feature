Feature: Registro de usuario

    Como prestamista deseo crearme una cuenta en la aplicación
    para aprovechar los beneficios de la app

Scenario: Cuenta creada correctamente

    Given que el cliente se encuentra en la pantalla para registrarse
    When ingresa su <nombre>, <apellidos>, <correo> y <contrasenha>
    And da clic en el botón de registrarse.
    Then aparece un mensaje de Registro exitoso
Examples:
    | nombre    | apellidos |       correo          | contrasenha |
    | Gonzalo   | Morales   | gmoralez@gmail.com    | grtgtg$vvg |

Scenario: Cuenta no creada
    Given que el cliente se encuentra en la pantalla para registrarse.
    When no ingresa la información requerida 
    And da clic en el botón de registrarse
    Then aparece un <mensaje>.
Example:
    | nombre    | apellidos |       correo          | contrasenha   |          mensaje               |
    |           |           |                       |               | Por favor, complete los campos |
    | Maria     | Fernandez |                       |  1234giuh     | Por favor, complete los campos |
    | Luis      |           |   luis24_@gmail.com   |               | Por favor, complete los campos |