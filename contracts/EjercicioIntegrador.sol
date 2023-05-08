// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Votacion {
    /**
    * PRACTICA: DE UN SISTEMA DE VOTACION EN EL BLOCKCHAIN
    *
    * Requerimientos:
    * 1. Se creará una lista blanca de personas que pueden votar

                            (LISTA BLANCA PARA VOTAR)
            ___________________________________________________________
            | Lista de billeteras      |           puede votar    |    
            |      0x1                 |              true        |       
            |      0x2                 |              true        |       
            |      0x3                 |              true        |       
            |      0x4                 |              true        |       
            ___________________________________________________________

                    mapping(address => bool) listaBlanca;

    * 2. Solamente hay dos candidatos: 1 y 2
            - llevar la cuenta de votos para cada candidato
    * 3. Se creará un método para votar: 'votar' que lleva el parámetro 'candidato'
    *      - Se debe verificar que la persona que vota esté en la lista blanca
    *      - Se debe verificar que la persona que vota no haya votado antes
    *      - Se debe verificar que el candidato exista (candidato1: 1, candidato2: 2);
    *      - Se acumulan votos para uno de los candidatos
    * 4. Se creará un método para finalizar la votación: 'finalizarVotacion'
            - cierra la votación y nadie más puede votar
            - cuenta los votos y define el ganador
            - emite un evento VotacionFinalizada que indica el ganador y la cantidad de votos
   */

    // modifier que protege admin
    address admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    modifier onlyAdmin() {
        if (msg.sender != admin) revert();
        _;
    }

    // lista blanca
    mapping(address => bool) public siPuedeVotar;

    function agregarVotacion(address votante) public onlyAdmin {
        siPuedeVotar[votante] = true;
    }

    // modifier lista blanca
    modifier verificaListaBlanca() {
        bool estaEnListaBlanca = siPuedeVotar[msg.sender];
        if (!estaEnListaBlanca) {
            revert();
        }
        _;
    }

    // Quiero guardar si una persona ya votó o no
    //           address         ||      saber si ya votó
    //                   0x1                     true
    //                   0x2     ||              false
    mapping(address => bool) siYaVotoONo;

    uint256 votosCandidato1;
    uint256 votosCandidato2;

    // @candidato: puede ser 1 o 2
    function votar(uint256 candidato) public verificaListaBlanca {
        bool yaVoto = siYaVotoONo[msg.sender];
        if (yaVoto) {
            revert();
        }

        if (candidato != 1 || candidato != 2) {
            revert();
        }

        siYaVotoONo[msg.sender] = true; // marco que ya votó
        if (candidato == 1) {
            votosCandidato1++;
        } else {
            votosCandidato2++;
        }
    }

    event Ganador(uint256 ganador);

    function finalizarVotacion() public onlyAdmin {
        if (votosCandidato1 > votosCandidato2) {
            emit Ganador(1);
        } else {
            emit Ganador(2);
        }
    }
}
