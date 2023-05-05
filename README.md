# WORKSHOP - MIS PRIMEROS PASOS EN SOLIDITY - 3 días

![image](https://user-images.githubusercontent.com/3300958/236568610-a6f7d9d2-8806-4eb3-94a2-b3daf8fe082a.jpg)

## Desricipción del workshop

**Fechas: 5, 6, 7 de mayo**

**Comunidades Latam**

Hemos organizado este taller de la mano con diferentes comunidades de LATAM cuya misión es la de difundir la programación Blockchain en todos los rinconces de LATAM. Síguelos para aprender sobre Web 3:

[@andreweb3_eth](https://twitter.com/andreweb3_eth)
[@DosisWeb3](https://twitter.com/DosisWeb3)
[@dra_themis02](https://twitter.com/dra_themis02)
[@EthereumBo](https://twitter.com/EthereumBo)
[@EthereumCR](https://twitter.com/EthereumCR)
[@ethereum_ec](https://twitter.com/ethereum_ec)
[@JasuVictorio](https://twitter.com/JasuVictorio)
[@BanklessDAO_Es](https://twitter.com/BanklessDAO_Es)
[@V1PS_NFTs](https://twitter.com/V1PS_NFTs)

Aprenderemos sobre el Blockchain de Ethereum y sus partes más importantes. Así también, utilizaremos el lenguaje de programación Solidity para crear contratos Inteligentes.

¡Conoce más sobre esta creciente industria del Blockchain para dar los primeros pasos como desarrollador Blockchain!

**Temario**

- El blockchain framework (transacción, billetera, firma, mempool, network, consensus, hashing, block y blockchain)
\- ¿Qué es la Ethereum Virtual Machine (EVM)?
\- ¿Qué son los Opcodes del bytecode?
\- Introducción a la programación en Solidity
\- Usando Remix para crear y publicar contratos inteligentes
\- Programación en Solidity: *mapping*, *require*, *revert, events, funciones, modifiers, constructor*
\- Ejercicio Integrador

**Sorteo**

Para las personas que completen el workshop, sortearemos una beca para nuestro próximo curso llamado **Blockchain sin Secretos: Todo lo que debes saber para empezar**. Un curso virtual teórico de 12 horas para conocer a profundidad sobre el Blockchain.

**POAP**

Reclama tu POAP por participar en este workshop

## **Ponente - LEE MARREROS**

Fundador de la escuela online **Blockchain Bites** (programación para el Blockchain). Conferencista, escritor y profesor en tópicos de Blockchain. Cofundador del juego [Pachacuy.io](http://pachacuy.io/) (El Axie Infinity de South America). Desarrollador Blockchain en [CuyToken.com](http://cuytoken.com/), la primera empresa de criptocréditos del Perú. 5+ años de experiencia en compañías Fintech (e.g. Yodlee, Tenpo, FIDIS, CuyToken y dcSpark). Estudió Computer Programming Certificate en la Universidad de Santa Clara, California, USA. Graduado del bootcamp del programa inmersivo de Ingeniería de Software Hack Reactor, Los Ángeles. Graduado de Lean UX and Service Design Program (UTEC) y del diplomado de Finanzas Corporativas (UPC).

## Únete a nuestra comunidad

[Twitter](https://twitter.com/BBitesSchool)

[Discord](https://discord.com/invite/7WCCgUKx)

[LinkedIn](https://www.linkedin.com/company/blockchain-bites-es/)

[MeetUp](https://www.meetup.com/blockchain-bites)

[Bootcamp Presencial 15 días (29 de mayo)](https://www.blockchainbites.co/bootcamp-presencial)

[Bootcamp Virtual 15 días (3 julio)](https://www.blockchainbites.co/bootcamp-virtual)

### Requisitos

1. Repositorio y Sistema

   - Node version 14.x. Usar nvm para intalar otras versiones de `nodeJS`

   - Hacer fork del [repositorio de la clase](https://github.com/leemarreros/comunidades-latam-3-days.git)
   - Ubicarte en el branch `setUp` y luego instalar los paquetes de NPM
     - `$ git checkout setUp`
     - `$ npm install`
   - Abrir un terminal en la carpeta raíz. Correr el siguiente comando y verificar errores:
     - `$ npx hardhat compile`

2. Billetera y Matic

   - Instalar extensión de Metamask en Navegador. Crear cuenta. Habilitar una billetera en Metamask. Cambiar a la red `Mumbai`. Enviar `Matic` a la billetera creada usando el `address` de la billetera. Para solicitar `Matic`, ingresar a [Polygon Faucet](https://faucet.polygon.technology/). Recibirás un balance en `Matic`

3. Añadir Mumbai a Metamask

   1. Dirigirte a [Polygon Scan](https://mumbai.polygonscan.com/)

   2. Hacia el final de la página buscar el botón `Add Mumbai Network`

   3. Se abrirará una ventana de Metamask. Dar confirmar y continuar hasta que se efectúe el cambio de red

4. Crear archivo de Secrets `.env` duplicando el archivo `.env-copy`

   - `$ cp .env-copy .env`

5. Rellenar las claves del archivo `.env`:

   - `API_KEY_POLYGONSCAN`: Dirigirte a [PolygonScan](https://polygonscan.com/). Click en `Sign in`. Click en `Click to sign up` y terminar de crear la cuenta en Polygon Scan. Luego de crear la cuenta ingresar con tus credenciales. Dirigirte a la columna de la derecha. Buscar `OTHER` > `API Keys`. Crear un nuevo api key haciendo click en `+ Add` ubicado en la esquina superior derecha. Darle nombre al proyecto y click en `Create New API Key`. Copiar el `API Key Token` dentro del archivo `.env`.
   - `PRIVATE_KEY`: Obtener el `private key` de la wallet que se creó en el punto `2` siguiendo [estos pasos](http://help.silamoney.com/en/articles/4254246-how-to-generate-ethereum-keys#:~:text=Retrieving%20your%20Private%20Key%20using,password%20and%20then%20click%20Confirm.) y copiarlo en esta variable en el archivo `.env`.
   - `MUMBAI_TESNET_URL`: Crear una cuenta en [Alchemy](https://dashboard.alchemyapi.io/). Ingresar al dashboard y crear una app `+ CREATE APP`. Escoger `NAME` y `DESCRIPTION` cualquiera. Escoger `ENVIRONMENT` = `Development`, `CHAIN` = `Polygon` y `NETWORK` = `Mumbai`. Hacer click en `VIEW KEY` y copiar el valor dentro de `HTTPS` en el documento `.env` para esta variable de entorno. Saltar el paso de pago del servicio.

6. Comprobar que no hay ningún error ejecutando el siguiente comando:

   - `$ npx hardhat --network mumbai run scripts/deploy.js`
   - Esperar de 2 a 3 minutos mientras se hace el deployment.
   - Si todo fue correctamente ejecutado, se verá el siguiente resultado:

   ```bash
   MiPrimerContrato se publicó en 0xE6Cc58D83aea8BAfE847A0545DdbB17528Dcafc9
   Nothing to compile
   Successfully submitted source code for contract
   contracts/MiPrimerContrato.sol:MiPrimerContrato at 0xE6Cc58D83aea8BAfE847A0545DdbB17528Dcafc9
   for verification on the block explorer. Waiting for verification result...

   Successfully verified contract MiPrimerContrato on Etherscan.
   https://mumbai.polygonscan.com/address/0xE6Cc58D83aea8BAfE847A0545DdbB17528Dcafc9#code
   ```

7. Razones por las cuales el comando anterior podría fallar

   - El archivo `.env` no tiene las claves correctas
   - La llave privada de la billetara de Metamask no cuenta con los fondos suficientes
   - `NodeJS` es una versión antigua

## **Blockchain Framework:**

![image-20221001173609057](https://user-images.githubusercontent.com/3300958/193497008-44d89e72-3b9d-413c-af32-68bc8a3a5b54.png)

1. Transacción: unidad fundamental dentro de un blockchain. Cualquier operación llevada a cabo se atomiza en una transacción que es enviada por un usuario para ser incluida en el siguiente blocke.
2. Wallet: Es como una cuenta de banco. Se usa para ejecutar transacciones. Así mismo, una wallet puede llevar la cuenta de los activos de una dirección (address). La wallet en sí misma no almacena los activos, solo muestra los balances.
3. Signature: Una firma digital por el usuario es necesaria firmar una transacción antes de que sea incluida en la network,
4. Mempool: Luego de que una transacción es firmada, se incluye en la Mempool. Este es el lugar donde todas las transacciones esperan por un validador para que puede incluirlo en el bloque.
5. Network: la naturaleza de la red de nodos que mantiene en pie al Blockchain es distribuida. Cualquiera está en la posibilidad de obtener una copia desde la primera hasta la última transacción del Blockchain (no centralización de la información). Bajo este modelo, la red es capaz de determinar qué transacciones son válidas.
6. Consensus: Es una manera de crear un mecanismo de votación entre los nodos. PoS, PoW.
7. Hashing: es el proceso de generar una huella digital única. Se utilizan funciones que hacen Hash cuyo input es la data. Un cambio infinitesimal en la data y el hash obtenido es completamente diferente. Ello invalidaría al bloque.
8. Block: Es un contenedor de todas las transacciones que se añadirán al blockchain. Estos bloques están linkeados unos con otros mediante valores de hash.
9. Blockchain: Es un libro público en el cual los bloques están linkeados, lo cual nos permite ver si las transacciones son validas o no.
