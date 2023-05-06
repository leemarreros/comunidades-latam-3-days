// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// TAMAÑO LÍMITE DEL CONTRATO ES 24KB
contract MiPrimerContrato {
    // storage (memoria permanente)
    string saludo = "Hola";

    // métodos
    // setters (modificar o escribir información) y getter (leer información)
    // JAVA: public, private, final
    //
    // Visibilidad del método en SOLIDITY:
    // - public: el método puede ser usado o llamado por un usuario externo
    // - private: el método solo será usado dentro del contrato y no por un usuario externo
    // - internal
    // - external
    // - view: indica que el método es solo lectura
    // Este es un método setter. Método de escritura
    function cambiarSaludo(string memory nuevoSaludo) public {
        saludo = nuevoSaludo;
    }

    // Vamos a crear un método getter o de lectura
    // Como es un método de lectura, le corresponde la visibilidad de 'view'
    function leerSaludo() public view returns (string memory) {
        return saludo;
    }
}
