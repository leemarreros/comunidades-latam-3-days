// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Mapping {
    /**
     * Digamos que deseo guardar en una tabla
     * el saludo de cada persona que me visite.
     *
     * La tabla luce como la siguiente:
     *
     *          Nombre (key)        |    Saludo (valor)
     * -----------------------------|---------------------------
     * 1. Juan                      | Hola, soy Juan
     * 2. Maria                     | Hola, soy Maria
     * 3. Jose                      | Hola, soy Jose
     * 4. Carlos                    | Hola, soy Carlos
     * 5. Alicia                    | Hola, soy Alicia
     *
     * En la columna de la izquierda, guardamos el nombre (string)
     * En la columna de la derecha, guardamos el saludo (string)
     *
     * En solidity podemos usar un mapping para guardar esta tabla.
     * Un 'mapping` es un hash table, o tabla de doble entrada.
     *
     * Usando un 'mapping' en solidity, podemos asociar un 'valor' a un 'llave'
     *
     * En dicha table, la llave (key) es el nombre y el saludo es el valor (value).
     * En un futuro, seremos capaces de obtener el saludo de una persona usando su nombre.
     * En otra palabras, usando el nombre como llave, obtendremos el valor del saludo.
     *
     * Para guardar esta información, necesitamos dos valores: nombre y saludo.
     *
     * Si fuera Javascript, podríamos usar un objeto para guardar esta información.
     *
     * var listaSaludosPorNombre = {};
     * listaSaludosPorNombre['Juan'] = 'Hola, soy Juan';
     * listaSaludosPorNombre['Maria'] = 'Hola, soy Maria';
     * ...
     *
     * Y se vería de la siguiente manera:
     * listaSaludosPorNombre
     * {
     *  'Juan': 'Hola, soy Juan',
     *  'Maria': 'Hola, soy Maria',
     * }
     *
     * Y para solicitar información, podríamos usar la siguiente sintaxis:
     * listaSaludosPorNombre['Juan'] // 'Hola, soy Juan'
     * listaSaludosPorNombre['Maria'] // 'Hola, soy Maria'
     * ...
     *
     */
    mapping(string => string) listaSaludosPorNombre;

    function guardarSaludoPorNombre(
        string calldata _nombre,
        string calldata _nuevoSaludo
    ) public {
        // guardando en el mapping;
        listaSaludosPorNombre[_nombre] = _nuevoSaludo;
    }

    function obtenerSaludoPorNombre(
        string memory nombre
    ) public view returns (string memory) {
        return listaSaludosPorNombre[nombre];
    }
}
