// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Eventos {
    event SaludoGuardado(string nombre, string saludo);

    mapping(string => string) public nombreYSaludo;

    function guardarSaludo(string memory nombre, string memory saludo) public {
        nombreYSaludo[nombre] = saludo;

        emit SaludoGuardado(nombre, saludo);
    }

    // EVENTOS:
    // - Otros contratos inteligentes no pueden escuchar eventos
    // - Los eventos es para comunicar información fuera del Blockchain
    // - Un método puede llamar múltiple eventos

    // REVERT:
    // - nos permite interrumpir una transaccion. Lanza un Error
    // - Puedo crear un error personalizado

    // Creando un Error personalizado:
    error NoEsElAdmin(address elQueLlama, address admin);
    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    modifier onlyAdmin() {
        if (msg.sender != myAddress) {
            revert NoEsElAdmin(msg.sender, myAddress);
        }
        _;
    }

    function protegidoPorElAdmin() public onlyAdmin {
        // 1
        // 2
        // 3
        // 4
        // 5
        // 6
        // ERROR        ____ calcular el total de gas hasta el ERROR.
    }
}
