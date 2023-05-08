// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract MappingEventsErrors {
    // Me indica la fecha en la cual se publico el smart contract
    uint256 horaPublicacionSmartContract = block.timestamp;
    // 1 days = 60 * 60 * 24; (en segundos)
    uint256 tiempoLimiteParaLlamarAlMetodo =
        horaPublicacionSmartContract + 1 days;

    function actualizarTiempoLimte(
        uint256 nuevoTiempoLimite
    ) public validarAdmin {
        tiempoLimiteParaLlamarAlMetodo = nuevoTiempoLimite;
    }

    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    mapping(string => string) public nombreYSaludo;

    // msg.sender: es el address de la persona que llama al contrato
    function guardarSaludo(string memory nombre, string memory saludo) public {
        // manera ingenua de proteger un método
        // Con este condicional, solamente Yo (myAddress) puede llamar a este método
        if (msg.sender != myAddress) {
            return;
        }
        nombreYSaludo[nombre] = saludo;
    }

    // modifier que me permita verificar que solo el admin pueda llamar al método
    modifier validarAdmin() {
        if (msg.sender != myAddress) {
            revert(); // <= hará que la transacción fallé y no se ejecute el método
        }
        _; // <= indica que debe regresar al método donde está el modifier
    }

    function guardarSaludo2(
        string memory nombre,
        string memory saludo
    ) public validarAdmin {
        // manera ingenua de proteger un método
        // Con este condicional, solamente Yo (myAddress) puede llamar a este método
        nombreYSaludo[nombre] = saludo;
    }

    modifier protege24Horas() {
        // validacion
        // if(si ya paso 24 horas, ingresar al if) {
        // block.timestamp: te devuelve el segundo en cual se llama al método
        // Si llamo ahora 'protegerMetodoPorTiempo', block.timestamp me devuelve = 7:58:13 (pero en segundos)
        // >: el segundo en el que llamo a este metodo, ya pasó las 24 horas
        // <: el segundo en el que llamo a este método, está dentro de las 24 horas
        if (block.timestamp > tiempoLimiteParaLlamarAlMetodo) {
            revert(); // interrumpir la transacción. hace que falle la transacción. Lanza un error e impide continuar
        }
        _; // Me devuelve al cuerpo de la función
    }

    // Quiero proteger este método en base al tiempo
    // Solamente quiero se llame dentro de las 24 horas de publicación del contrato
    function protegerMetodoPorTiempo() public protege24Horas {
        // cuerpo de la función
    }

    function protegerOtroMetodo() public protege24Horas {}

    function protegerOtroMetodo2() public protege24Horas {}

    function protegerPorTiempoYPorAdmin() public protege24Horas validarAdmin {
        // ejecuta el curpo del método
    }
}
