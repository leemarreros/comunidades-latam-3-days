// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Mappings {
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
     */

    // Javascript
    // * 1. Juan                      | Hola, soy Juan
    // var obj = {}; // diccionario o hash table
    // obj["Juan"] = "Hola, soy Juan";
    // obj["Alicia"] // undefined
    // Son diccionarios en Python, objectos en Javascript o HashTahbles en Java
    // Los mappings en Solidity no son iterables
    // Para saber que información se guardó, se puede guardar las llaves en un array aparte ["Juan", "Maria", "Jose"]
    // Puedes crear mappings de distintos de datos
    mapping(string => string) public saludosPorPersona;
    // 0xCA420CC41ccF5499c05AB3C0B771CE780198555e es la dirección de una billtera: tipo de dato address
    mapping(address => uint256) public billeteraYEdad;
    mapping(string => bool) public nombreABool;

    // Leer el valor del boolean
    // Solidity inicializa los booleans en false
    // con public en la variable, Solidity crea automáticamente el método de lectura para leer esa variable
    bool public tipoBoolean;

    // Leer valor default de entero
    // Solidity inicializa los enteros en cero
    uint256 public tipoEntero;

    function guardarSaludo(string memory nombre, string memory saludo) public {
        saludosPorPersona[nombre] = saludo;
    }

    // nombres: array de nombres, tipo de dato: string[] (array de strings)
    // saludos: array de saludos
    function guardarSaludoEnBatch(
        string[] memory nombres,
        string[] memory saludos
    ) public {
        for (uint256 i = 0; i < nombres.length; i++) {
            saludosPorPersona[nombres[i]] = saludos[i];
        }
    }

    // msg.sender
    // Es una variable global que te permite capturar la persona que llama al método
    address personaLlamante;

    function obtenerWalletDeLaPersonaLlamante() public {
        personaLlamante = msg.sender;
    }
}
