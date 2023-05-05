[TOC]

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
- ¿Qué es la Ethereum Virtual Machine (EVM)?
- ¿Qué son los Opcodes del bytecode?
- Introducción a la programación en Solidity
- Usando Remix para crear y publicar contratos inteligentes
- Programación en Solidity: *mapping*, *require*, *revert, events, funciones, modifiers, constructor*
- Ejercicio Integrador

**Sorteo**

Para las personas que completen el workshop, sortearemos una beca para nuestro próximo curso llamado **Blockchain sin Secretos: Todo lo que debes saber para empezar**. Un curso virtual teórico de 12 horas para conocer a profundidad sobre el Blockchain.

**POAP**

Reclama tu POAP por participar en este workshop

## Ponente - LEE MARREROS

Fundador de la escuela online **Blockchain Bites** (programación para el Blockchain). Conferencista, escritor y profesor en tópicos de Blockchain. Cofundador del juego [Pachacuy.io](http://pachacuy.io/) (El Axie Infinity de South America). Desarrollador Blockchain en [CuyToken.com](http://cuytoken.com/), la primera empresa de criptocréditos del Perú. 5+ años de experiencia en compañías Fintech (e.g. Yodlee, Tenpo, FIDIS, CuyToken y dcSpark). Estudió Computer Programming Certificate en la Universidad de Santa Clara, California, USA. Graduado del bootcamp del programa inmersivo de Ingeniería de Software Hack Reactor, Los Ángeles. Graduado de Lean UX and Service Design Program (UTEC) y del diplomado de Finanzas Corporativas (UPC).

## Únete a nuestra comunidad

[Twitter](https://twitter.com/BBitesSchool)

[Discord](https://discord.com/invite/7WCCgUKx)

[LinkedIn](https://www.linkedin.com/company/blockchain-bites-es/)

[MeetUp](https://www.meetup.com/blockchain-bites)

[Bootcamp Presencial 15 días (29 de mayo)](https://www.blockchainbites.co/bootcamp-presencial)

[Bootcamp Virtual 15 días (3 julio)](https://www.blockchainbites.co/bootcamp-virtual)

## Requisitos

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

## Blockchain Framework:

![blockchain forms blue-05](https://user-images.githubusercontent.com/3300958/236585141-08854fe0-5179-49b4-8927-0eef88883553.png)

### Transacción

**Unidad fundamental** dentro de un blockchain. Cualquier operación llevada a cabo se atomiza en una transacción que es enviada por un usuario para ser **incluida en algún bloque**. Es un **registro en el blockchain** de que ha sucedido, por ejemplo, un intercambio de información o valor. Una vez iniciada la transacción, es **emitida a la red para que sea validado** por un red de nodos a través de un proceso llamado consenso. Son **transparentes** y de **acceso público**, lo que significa que cualquier persona puede ver los detalled de la transacción. Una vez guardado en el blockchain se convierte en un registro **inmutable**.

### Billetera

Es como una cuenta de banco (representado por el **address de Ethereum**) y su contraseña (representado por **llave privada**). A través de una billetera se **interactúa y gestiona los activos digitales** que hay en el blockchain. Cabe mencionar que la llave privada es como una contraseña que **no se puede resetear.** Billeteras como la de Metamask, tienen como finalidad crear el par de address de Ethereum y su correspondiente llave privada. Metamask almacena las llaves privadas y las **utiliza para firmar transacciones**. El address de Ethereum se utiliza para **recibir transferencias de valor** o cualquier activo digital.

### Firma

Hace referencia a una firma digital que se usa para **verificar la autenticidad e integridad** de una transacción. Una firma digital **se crea usando la llave privada**. Una vez creada la firma digital, ésta **se añade en el detalle de la transacción** para ser lanzada a la red. Sirve para **verificar que la persona que posee la llave privada inició una transacción** en el blockchain. Una **firma digital es verificada usando el address de Ethereum** y dicho trabajo es llevado a cabo por los nodos.

### Mempool

Mempool es el **memory pool**. Es un lugar temporal en el nodo donde **se guardan transacciones sin confirmar**. Toda transacción sin confirmar **se propaga a los nodos de una red** (propagación de la transacción). **Los nodos aceptan transacciones sin confirmar** si pasan ciertos criterios, como el de tener una firma válida o suficientes fondos. Los nodos comparten la información de su mempool con otros nodos vecinos mediante el **chismoseo** (gossiping). Así **cada nodo vecino lo comparte con su otro vecino** hasta que toda la red tiene conocimiento de las transacciones sin confirmar.

### Red

La red de computadoras del Blockchain es **distribuida** y en cierta medida **decentralizada**.

#### Distribuido

Distribuido significa que hay **múltiples nodos o computadoras que participan en la validación** y procesamiento de las transacciones. Cada nodo **mantiene una copia del registro entero** del blockchain. En este sentido el blockchain posee información **redundante**. Esta distribución asegura que no existe un solo nodo que posea un control sobre la información. Esto **refuerza la tolerancia a la falla y la vulnerabilidad** del sistema.

#### Decentralizado

Se refiere a la **ausencia de una autoridad central**. No existen una entidad que o servidor central que posea algún poder sobre una parte del blockchain. En cambio, cada nodo cumple un **papel de validador**. A su vez, cada nodo posee igual poder en el proceso de **toma de decisiones para llegar a un consenso**. En vez una sola persona tomando decisiones, existe un **modelo de gobierno** en el blockchain de Ethereum que les permite incorporar mejoras. Los miembros de la comunidad son capaces de proponer mejoras (**EIP**) que son **sometidas a votación.** 

### Consensus

Es como un **mecanismo de votación entre los nodos** para poder llegar a una sola conclusión. Mediante este consenso todos los nodos llegan a un acuerdo en el orden y validez de las transacciones. Ejemplos: PoS, PoW.

### Hashing

Es el proceso de generar una **huella digital única**. Es utilizado para poder **vincular dos bloques**. Es decir, cada bloque **guarda en su interior el hash del anterior bloque**. Un cambio infinitesimal en la data de cualquier bloque y el hash obtenido es completamente diferente. Este nuevo hash **comparado con el que se ya se guardó** indicaría que hubo una alteración de la información.

### Bloque

Es un **contenedor de todas las transacciones** que fueron seleccionadas por el validador. Este bloque se añadirá al blockchain si el validador es seleccionado. Estos **bloques están linkeados** unos con otros mediante valores de hash. En Ethereum, un nodo validador es seleccionado de manera aleatoria y proporcional al cantidad de Ether dejado en garantía. Cuando el validador propone el bloque a ser incluido en el blockchain, otros nodos verifican que sea correcto. Cuando la mayoría de nodos confirma que el bloque es correcto se llega al estado de **finality**. Es decir, el bloque será agregado a la cadena de bloques y es poco probable que pueda ser cambiado.

### Blockchain

Es un libro o **registro público en el cual los bloques están linkeados** entre sí. Ello nos permite ver si las transacciones son validas o no. En relación a estructura de datos, podemos decir que el **blockchain es una lista singular linkeada**. Cada bloque contiene una referencia al bloque anterior. Los nuevos bloques son incluidos al final de la cadena y se mantiene un orden secuencial para cada bloque.

# El lenguaje de programación Solidity

![image-20220930000916248](https://user-images.githubusercontent.com/3300958/193497028-a90f9d7a-0336-4def-b45c-41af0086bec7.png)

1. Solidity es el lenguaje de programación preferido entre los desarrolladores y la gran mayoría de Blockchain utilizan Solidity como su primer lenguaje de desarrollo.
2. Es muy similar a Javascript, C++ y Python. Está tipado estáticamente, admite la herencia de contratos, el uso de bibliotecas y la definición de tipos complejos por parte del usuario.
3. El punto de partida es definir una categoría llamada `contract` (muy parecido al concepto Java de una clase). Dentro de ese contrato, define todo el comportamiento (métodos) del contrato inteligente dentro de sus llaves `{}`.
4. La compilación genera `bytecode` y `ABI`. El primero lo entienden las máquinas y el segundo el ser humano.
5. Con Solidity puedes crear contratos de votación, subastas, monederos multifirma, entre otros.

## Dos tipo de cuentas en Ethereum

![image-20221001222155465](https://user-images.githubusercontent.com/3300958/193497001-1ad024fe-ed54-4ead-a926-b45d7c58bdb1.png)

- EOA (Externally owned account): Son usuarios (personas) que posee una llave privada. No posee código. Pueden mantener un balance positivo de Ether. Firma transacciones. Puede transferir activos (assets).
- SCA (Smart Contract Account): Son cuentas controladas por código dentro del Smart Contract.

## Mi primer contrato en Solidity

`MyFirstContract_1.sol`

En [Remix](https://remix.ethereum.org/), crear un nuevo archivo llamado MiPrimerContrato:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MiPrimerContrato {
		// storage area
    string saludo;

    function set(string memory _nuevoSaludo) public {
        saludo = _nuevoSaludo; // no se necesita 'this'
    }

    function get() public view returns (string memory) {
        return saludo;
    }
}
```

1. **Licencia:** La primera línea nos indica la licencia del código a ser publicado de una manera en que la máquina puede entender. Al publicar el contrato de manera manual en el escaner, se solicitará la licencia que está en el código del smart contract.

2. **Versión del pragma:** La siguiente línea nos indica la versión de Solidity en la cual el código fue escrito. La palabra clave `pragma` hace referencia a instrucciones para que el compilador sepa cómo tratar el código. Cada versión de compilador podría generar un diferente output con respecto al anterior. Al definir una versión puntual te aseguras que compile bajo esa especificación. Además, sabrás qué versión de documentación usar en caso hayan errores o conflictos. 

   La siguiente imagen son todas las versiones disponibles en la [documentación de Solidity](https://docs.soliditylang.org/en/v0.8.19/).

<img src="/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230421115308158.png" alt="image-20230421115308158" style="zoom:50%;" />

3. **Contrato:** contrato es una colección de código y estado (code + state) que vive dentro de una dirección (address) específica en el Blokchain luego de ser publicado
4. **Storage:** definimos dentro del storage una variable llamda `saludo` del tipo `string`. Se puede entender esta variable como si fuera una entrada en una base de datos.
5. **Setters y getters:** las variables guardades en storage se pueden consultar (usando `get`) y modificar (mediante `set`) con los mismos métodos definidos dentro del smart contract

## ¿Qué hace especial a un smart contract?

### Registro en el blockchain

Este smart contract será publicado y guardado en la EVM a través de una transacción de creación de smart contract. El usuario que publica el smart contract lo hará con su billetera y se guardará un registro en el historial de transacciones en el Blockchain.

### Inmutabilidad

El código del smart contract una vez publicado tiene la característica de inmutabilidad, que es propio del Blockchain. No será posible bajo ningún medio alterar el código del smart contract. Ello le confiere un carácter de transparencia y seguridad a sus usuarios 

### Código público

El código del smart contract luego de ser verificado será público y abierto. Muchos servicios creados en el blockchain han sido enteramente basados o inspirados en otros smart contracts ya publicados

### Auto auditoría

Cualquier usuario tendrá la posibilidad de poder leer y auditar los métodos que usará de este mismo smart contract. Cada usuario estará en la posiblidad de conocer el procedimiento y funcionamiento interno de cada uno de los métodos de un smart contract

### Sin permiso

Los smart contracts son como APIs públicos con los cuales puedes interactuar sin la necesidad de tener un usuario y contraseña. Tampoco es necesario obtener el permiso, autorización o verificación de una tercera entidad para tener acceso al uso de los metodos de un smart contract

### El código es ley

Hay una computadora detrás de la ejecución redactado en el smart contract. Esto lo vuelve imparcial. La lógica declara dentro del smart contract se convierte en ley y ejecutado al pie de la letra por una computadora. Esta computadora, solo lee las condiciones para determinar un resultado.

### Comparación otros lenguajes

La gran diferencia de escribr este mismo código en otro lenguage de programación, como Javascript, es que para lograr lo mismo tendríamos que levantar un servidor y una base de datos. 

Además de la creación de la clase (Class - ES6) que lleve los mismo métodos, se requiriría métodos para poder guardar y leer información de la base de datos. Ello sin contar la creación de la conexión con la base de datos. Así también, tendríamos la necesidad de tener un servidor corriendo de manera permanente, además de garantizar que la lógica de la clase sea incorruptible. Definitivamente es muy complejo lograr dicha solución en un entorno tradicional Web 2.0. 

Cuando se trata de desarrollar para el Blockchain, tan solo desarrollamos el código del smart contract. El resto de características (inmutabilidad, descentralización, código público, etc.) es otorgado por el Blockchain.

Usando Smart Contracts, el "servidor" y la "base de datos" están dados por la Máquina Virtual de Ethereum (EVM). Las lecturas y escrituras a raíz de la ejecución del código, se hace desde y sobre el blockchain.

## Publicar el Smart Contract

Una vez finalizada la redacción del smart contract, el siguiente paso es poner el smart contract en el blockchain para que pueda ser usado por cualquier usuario.

1. Para publicar el contrato usar Metamask en la red Testnet de Goerli. Previamente solicitar Ether en algún [faucet de Polygon](https://faucet.polygon.technology/).

![image-20230421175802786](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230421175802786.png)

2. En `ENVIROMENT` escoger `Injected Provider - Metamask`, lo cual conectará el IDE de Remix con una billetera de Metamask.
3. En `CONTRACT` asegurar que está seleccionado el contrato que se desa publicar
4. Al hacer clic en `Deploy`, abrirá un pop-up de Metamask para poder confirmar y firmar la transacción, lo cual hará posible la creación del Smart Contract en el Blockchain.

<img src="/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230421180122075.png" alt="image-20230421180122075" style="zoom:80%;" />

5. Cuando la transacción haya terminado, se podrá visualizar dentro de la pestaña de `Actividad`. Hacer click en `Implementación de contrato` y se abrirá otra ventana. En dicha ventana hacer click en `Ver en el explorador de blockes`.

<img src="/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230421180216416.png" alt="image-20230421180216416" style="zoom:80%;" />

6. Serás dirigido a [mumbai.polygonscan.com](https://mumbai.polygonscan.com/tx/0x15d8ddf363f077858f1bbe6d481f764d7ec8c11c3dc1031be0308fccad2a5bec) donde podrás ver los detalles de la transacción (publicación del Smart Contract). Se puede observar que el contrato ha sido creado en la siguiente dirección: `0xca420cc41ccf5499c05ab3c0b771ce780198555e`. Esta misma dirección servirá para hacer su posterior verificación.

   ![image-20230421181934042](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230421181934042.png)

   Aquí podemos inspeccionar varios elementos importantes:

   1. <u>Transaction hash</u>: tiene un tamaño de 32 bytes y son caracters hexadecimales. La información usada para crear el hash es la siguiente: el address del que publicó el contrato, el address a quien se dirige la transacción, la cantidad de ether que se transfiere (si aplica el caso), el límite de gas, el precio del gas, cualquier información o funciones a llamar que estén asociadas con la transacción.

   2. <u>Status:</u> indica si la transacción se realizó de manera exitosa. De lo contrario señalaría el error en cuestión

   3. <u>Block:</u> También conocido como `block height`. Se refiere al número de bloque en el cual fue incluido dicha transacción. Los bloques se cuentan de manera consecutiva desde el block 0, el origen. Al hacer click en dicho número se pueden observar las otras transacciones que se incluyeron en dicho bloque.

   4. <u>Timestamp:</u> Indica el momento en que el bloque donde está dicha transacción se verifica por primera vez.

   5. <u>From:</u> El address de quien publica el smart contract.

   6. <u>To:</u> A quien va dirigida la transacción. En el caso de creación de smart contract, el recipiente es el mismo smart contract

   7. <u>Value:</u> Cantidad de Matic (o Ether) que se envía en dicha transacción

   8. <u>Transaction Fee:</u> Cantidad de Matic (o Ether) que el usuario pagó para que su publique su smart contract

   9. <u>Gas Price:</u> Es la suma de `base fee` y el `priority fee`. En suma es el costo por cada unidad de gas en el momento en que se realizó la transacción. El `base fee` cambia a través del tiempo dependiendo de si el bloque actual llega a su capacidad target. Si un bloque es llenado por encima del 50%, el `base fee` se incrementa. Si un bloque está por debajo de ese target, el `base fee` disminuye. Por lo tanto el `Gas Price` es dinámico. El `piority fee` es la propia para el validador y es ajustable por el usuario.

   10. <u>Gas Limit by Txn:</u> Es el máximo de unidades de gas asignado para realizar esta transacción

   11. <u>Gas Usage by Txn:</u> Unidades de gas gastadas durante la transacción

   12. <u>Gas Fees:</u>

       1. Base: es dinámico y es determinado en base a si un bloque llegó o no a su capacidad objetivo
       2. Max: es el máximo fee que el usuario está dispuesto a pagar. Debe ser mayor o igual que el `base fee`. 
       3. Max Priority: es la propina para el validador que el usuario decide ofrecer.

   13. <u>Burnt:</u> Este es el resultado de multiplicar el `base fee` con el `Gas Usage`. Formula: `base fee * gas usage`. Al quemar Ether se procura que la moneda se vuelva deflacionaria.

   14. <u>Txn Saving Fees:</u> También es considerado el refund. Se halla con la siguiente fórmula: `Refund = Max fee - (base fee + priority fee)`.

       In the following table, there a summary of all formulas:

       | Formula                                 | Value |
       | --------------------------------------- | ----- |
       | Transaction Fee (Gas Usage * Gas Price) | 400   |
       | Gas Price (Priority + Base Fee)         | 4     |
       | Gas Usage                               | 100   |
       | Max (a.k.a. Max Fee)                    | 5     |
       | Priority (a.k.a Max Priority)           | 1     |
       | Base Fee                                | 3     |
       | Refund (Max - (Priority + Base Fee))    | 1     |
       | Burnt (Base Fee * Gas Usage)            | 300   |
       | Savings (Refund * Gas Usage)            | 100   |

       Más información sobre el gas [aquí](https://ethereum.org/en/developers/docs/gas/).

## Verificación de un Smart Contract

A través de la verificación de un smart contract en el Escaner se puede hacer público el código del mismo. Adicional a ello, el Escaner provee una interface para poder interactuar con los métodos del smart contract. Sigue los siguienes pasos para verificar un smart contract.

1. Para verificar, hacer click en la dirección del contrato creado en el anterior paso. O en su defecto, ir al siguiente link [`https://mumbai.polygonscan.com/address/0x0a5e44c07b189662269cd715d5a65ba4075a3ef3`](https://mumbai.polygonscan.com/address/0x0a5e44c07b189662269cd715d5a65ba4075a3ef3), del cual la última parte será reemplazada por la dirección (address) de tu contrato.

![image-20230422090903615](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230422090903615.png)

2. Hacer click en la pestaña `Contract` que te permitirá ver el bytecode generado del Smart Contract. Para verificar, hacer clic en `Verify and Publish`.

![image-20221002072149755](https://user-images.githubusercontent.com/3300958/193496987-b6646c29-213c-470d-a925-2fe2a33a7a07.png)

3. Se abrirá una lista de opciones que tienen que ser llenadas de la siguiente manera: address del smart contract, Single File, versión del compilador (debe ser la misma usada en Remix), MIT de licencia.

![image-20230422091056138](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230422091056138.png)

4. En esta ventana copias y pegas el código de Remix. Verificas el CAPTCHA. Luego clic en `Verify and Publish`.

![image-20221002074129280](https://user-images.githubusercontent.com/3300958/193496578-46b72f49-0855-4915-acfb-67d2c78d3832.png)

4. Si todos los valores fueron incluidos correctamente, se verá el siguiente resultado:

![image-20230422091256124](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230422091256124.png)

6. Al dirigirte a tu contrato en `mumbai.polygonscan.com` con el siguiente link [`https://mumbai.polygonscan.com/address/0x0a5e44c07b189662269cd715d5a65ba4075a3ef3`](https://mumbai.polygonscan.com/address/0x0a5e44c07b189662269cd715d5a65ba4075a3ef3#code), del cual la última parte será reemplazada por la dirección (address) de tu contrato, podrás (1) encontrar el código del Smart Contract, (2) interactuar con el contrato directamente (`Read Contract` y `Write Contract`) y (3) observar otros detalles del mismo.

   ![image-20230422091538911](/Users/steveleec/Documents/Blockchain Bites/comunidades-latam-3-days/README.assets/image-20230422091538911.png)

   * `Read Contract`: te permite interactuar con los métodos de sólo lectura del smart contract
   * `Write Contract`: utilizar cualquier método de esta pestaña requiere dicha transacción sea firmada con la billetera. El resultado de usar estos métodos es que cambiarán el estado del blockchain

## Hash table en contratos inteligentes

### Es como un diccionario

Podemos imaginar que mapping es como un diccionario. Cada vez que quieres saber la definición de una palabra lo buscas en la lista y al encontrarla, obtienes el significado de dicha palabra. Mapping en Solidity es una lista que conecta dos valores: una llave y el valor (de dicha llave). En el caso del diccionario, se conecta la palabra con su significado. Por lo tanto, la palabra sería la llave y el significado sería el valor asociado a esa llave.

Entonces podemos decir que mapping en Solidity es una estructura de datos que guarda la información en base a llaves y valores. Tanto las llaves como los valores asociados a esas llaves pueden ser de diferentes tipos de datos con pequeñas limitaciones.

### Mapping en javascript

En `javascript` podemos crear un `mapping` de la siguiente manera:

```javascript
var diccionario = {}
diccionario["computadora"] = "Máquina electrónica";
```

Al hacer esto, hemos asociado la llave `computadora` con el valor de `Máquina electrónica`. Cuando queremos solicitar el valor de esta llave, realizamos lo siguiente:

```javascript
console.log(diccionario["computadora"]); // Máquina electrónica
```

Es decir, accedemos al valor asociada a dicha llave pasando la llave al `mapping`.

### Mapping en Solidity

Sin embargo, en Solidity debemos definir los tipos de datos a usar dentro del `mapping`. Dado que para este ejemplo estamos usando un tipo de dato `string` para la llave y un tipo de dato `string` para el valor asociado a esa llave, hacemos lo siguiente. Veamos:

```solidity
mapping(string => string) diccionario;
diccionario["computadora"] = "Máquina electrónica";
```

El tipo de datgo `mapping` en solidity es una de las estructuras de datos más usados en Solidity. Podemos definirlo de manera genérica del siguiente modo:

```
mapping(KeyType => ValueType) mappingName;
```

Los tipos de data para llave y su valor asociado son definidos de antemano.

### Tipos de datos para llave y su valor

Veamos la lista de tipos de dato tanto para las llaves como para los valores asociados a cada llave:

| Types                     | Key Type | Value Type |
| ------------------------- | -------- | ---------- |
| boolean (bool)            | ✅        | ✅          |
| integer (uint256)         | ✅        | ✅          |
| unsigned integer (int256) | ✅        | ✅          |
| address                   | ✅        | ✅          |
| string                    | ✅        | ✅          |
| enum                      | ✅        | ✅          |
| bytes                     | ✅        | ✅          |
| Contract                  | ✅        | ✅          |
| mapping                   | ❌        | ✅          |
| struct                    | ❌        | ✅          |
| array types               | ❌        | ✅          |

El tipo de dato para las llaves son más limitadas. Sin embargo, para el valor de las llaves puede tomar cualquier tipo de datos.

### Es parte del storage

Los `mapping` solo pueden tener la ubicación de `storage` dentro de la estructura de un contrato inteligente. No pueden ser usados como argumentos o valores de retorno de funciones públicas.

### Getter automático

En la definición de un `mapping` se puede incluir un modificador de su visibilidad de la siguiente manera:

```solidity
mapping(string => string) public diccionario;
```

Al incluir el visibilizador de `public`, Solidity crea automáticamente un método para obtener información del `mapping`. Es decir, Solidity creará un `getter`. El argumento de este método `getter` será la llave del mapping y el valor de retorno será el valor asociado a dicha llave.

### Nombre de llave y nombre del valor

De manera opcional, se puede incluir en la definición de un `mapping` los nombres para la llave y su valor de la siguiente manera:

```solidity
mapping(string palabra => string definicion) diccionario;
```

Esto agrega mayor experiencia de usuario para el usuario porque puede entender con mayor claridad de qué trata la llave y su valor asociado.

### Inicialización de un `mapping` 

Cuando un `mapping` se define, automáticamente todos los valores asociados a cada una de las llaves del `mapping` también se inicializan a un valor por defecto (definido por Solidity). El valor de inicialización dependerá del tipo de dato usado. Veamos unos ejemplos:

```solidity
// mapping que va de un entero a un entero
mapping(uint256 => uint256) integerToInteger;

// solicitemos valores
integerToInteger[123]; // 0
integerToInteger[456]; // 0

// mapping que va de un string a un bool
mapping(string => uint256) stringToInteger;

// solicitemos valores
stringToInteger["cualquier valor"]; // ""
stringToInteger["otro valor"]; // ""
```

La inicialización automática en Solidity deviene en que no existe la posibilidad de encontrar valores sin definir del tipo `undefined` como sí lo hay en otros lenguajes de programación.

### Longitud e iteración de un `mapping`

No se puede iterar sobre un `mapping`. Ello porque por defecto todo el mapping se inicializa y no se lleva la cuenta de aquellos valores que ya se guardaron y cuales no. Dado que no se puede sabar qué llaves se actualizaron, tampoco podemos saber la longitud de un `mapping`.

Se puede crear otra estructura de datos adicional al `mapping` para llevar la cuenta de las llaves que se están inicializando. Típicamente esta estructura de dato es un array.

Para eliminar la información de un `mapping` necesariamente se tiene que saber la llave que se busca limpiar. Lo hacemos de la siguiente manera:

```solidity
mapping(uint256 => uint256) integerToInteger;
mapping[123] = 123;
delete mapping[123];
mapping[123]; // 0
```

Con `delete` borramos la llave y el valor asociado a dicha llave. La siguiente vez que se consulta dicha llave se encontrará su valor de inicialización por defecto.

### Ejercicio

Resolvamos el siguiente ejercicio usando mappings. Digamos que deseo guardar en el smart contract la siguiente información. Guardaré el saludo de cada persona que me visite. La tabla luce como la siguiente:

| Nombre (key) | Saludo (value)   |
| ------------ | ---------------- |
| Juan         | Hola, soy Juan   |
| Maria        | Hola, soy Maria  |
| Jose         | Hola, soy Jose   |
| Carlos       | Hola, soy Carlos |
| Alicia       | Hola, soy Alicia |

`Mapping_2.sol`

Solución en Solidity:

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Mapping {
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

    function borrarSaludo(string memory nombre) public {
        delete listaSaludosPorNombre[nombre];
    }
}
```

## Excepciones (Errores) y su propagación

Solidity usa excepciones para manejar errores. En la situación en que una función llama a otras funciones, una excepción también puede detonarse y el error llegará a la superficie. Cuando estas excepciones son disparadas podría ir acompañado de información adicional.

### Revierten el estado

Estas excepciones revierten cualquier cambio de estado realizado durante la transacción en donde se dan estas excepciones. Es decir, o bien toda la transacción se procesa y se realizan todos los cambios de estado, o bien se revierten todos los cambios si es que una excepción se dispara.

### La excepción `require`

Era una de las formas más usadas para manejar las excepciones en Solidity. Sin embargo, `require` le está dando lugar a `revert` y los errores personalizados. 

Normalmente se usa para validar los inputs del usuario, valores de variables o los valores de retornos de otros sub métodos. Suelen ir al inicio de los métodos.  Valida condiciones durante la ejecución del smart contract.

```solidity
// Sintaxis:
require(condición); // condición es 'bool'
require(condición, mensaje_de_error); // mensaje_de_error es 'string'
```

* `condición`: es una expresión booleana. Puede llevar otros operadores booleanos como `||`, `&&`, `>`, `<`, `<=`, `>=`, `!=` para poder evaluar múltiples condiciones.
* `mensaje_de_error`: en caso la condición resulte en `false` se interrumpe la ejecución y se dispara la excepción con dicho mensaje de error. Es opcional.

```solidity
// Ejemplo:
require(owner == msg.sender, "No es el duenio");
require(!isPaused, "Esta pausado");
```

La excepción `require` crea un error del tipo `Error(string)`. Consume todo el gas hasta el momento en que se dispara el `require`. El gas consumido no es devuelto al usuario pero el restante sí.

### La excepción `revert` y errores personalizados 

Se usa en la misma situaciones que `require`. Solo difiere en la sintaxis y permite crear errores con nombres personalizados. El `revert` no tiene una validación dentro de la función sino que depende del desarrollador incluir las validaciones antes de llamar al `revert`. Ejecutar el `revert` solo lanza la excepción con el mensaje de error.

```solidity
// Sintaxis con mensaje de error:
revert(mensaje_de_error);

// Sintaxis sin mensaje (compatibilidad hacia atrás):
revert();

// Sintaxis con error personalizado:
error ErrorPersonalizado();
revert ErrorPersonalizado();

// Sintaxis con error personalizado y argumentos:
error ErrorPersonalizado(string _error);
revert ErrorPersonalizado("Mensaje de error");

// Validación aparte:
if (!condition) revert ErrorPersonalizado();
```

Cuando se usa un error personalizado será más económico que usar un error con un mensaje de error. En el caso del error personalizado se puede user el mismo nombre del error para describirlo. Este nombre ocupa solo 4 bytes.

```solidity
// Ejemplo
// require(owner == msg.sender, "No es el duenio");
if (owner != msg.sender) revert("No es el duenio");

// require(!isPaused, "Esta pausado");
// usando custom error
error EstaPausado();
if (isPaused) revert EstaPausado();
```

Cuando se llama `revert()` genera un error sin información.  Cuando se llama`revert("mensaje de error")` se crea un error del tipo `Error(string)`. Utiliza el opcode `REVERT` por dentro. Consume todo el gas hasta el momento en que se dispara el `revert`. El gas consumido no es devuelto al usuario pero el restante sí.

### La excepción `assert`

Especialmente usado para asegurar los invariantes. Una invariante es algo que es asumido como siempre verdadero durante la ejecución de un programa. Son propiedades que nunca cambian. Son también condiciones que deben permanecer igual durante la vida entera del contrato. Esto aplica para transacciones, inputs del usuario y valores permanentes guardados dentro del smart contract. Por ejemplo, se puede asegurar que el precio de un producto siempre será positivo o que el inventario de un producto nunca será negativo.

No se usa para validar inputs del usuario en las funciones. Típicamente, los `assert` van al final del método. Se utiliza para controlar la correcta ejecución del código al final de una función. Los `assert` no son usados de manera seguida. 

```solidity
// Sintaxis
// condición es un bool
// no lleva un mensaje de assert
assert(condición); 
```

Disparar un `assert` implica que hay un bug en el código.

```solidity
// ejemplos
assert(productPrice > 0);

a = b - c;
assert(a <= b);

// la suma de x + y será siempre par
assert((x + y) % 2 == 0);
```

Desde la versión `0.8.0`, la función `assert` crea un error del tipo `Panic(uint256)` cuyo opcode es `REVERT`.  Ello impica además que el gas restante será devuelto al usuario.

<u>Nota:</u> Otras verificaciones que arroja el error del tipo `Panic(uint256)` y el opcode `REVERT` son la división por cero y el overflow aritmético.

En el caso se de una situación en la cual se dispara un `assert` para un smart contract en producción, se recomienda que `assert` debería estar acompañado con otras técnicas como el pausado o la actualización (upgrades) de contratos inteligentes.

### Verificación formal con `assert`

Tener `assert` en el código te permite hacer análisis de Verificación Formal con herramientas como [SMT Checker](https://docs.soliditylang.org/en/v0.8.17/smtchecker.html) or the [K-Framework](https://github.com/kframework/solidity-semantics). Estas herramientas encontrarán caminos en los cuales los `assert` pueden no cumplirse. De esa manera se pueden descubrir más vulnerabilidades en un smart contract.

### Ejercicio

Tomar el ejemplo de `DoubleMapping_3.sol` y completa los siguientes requisitos en relación a `revert` y `require`. Crea dos errores personalizados llamados `NotaIncorrecta` y `AddressZero`. El primer error lleva un argumento llamado `nota` de tipo `uint256`. Implementar `revert` y su equivalente `require` en cada punto.

GUARDAR NOTA:

* 1G - La nota tiene que ser mayor o igual a 0 pero menor o igual a 20

- 2G - El address del alumno no puede ser el address 0: `0x0000000000000000000000000000000000000000`
- 3G - La materia no puede ser un string vacío

BORRAR NOTA:

- 1B - El address del alumno no puede ser el address 0: `0x0000000000000000000000000000000000000000`

`RequireRevert_4.sol`

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract RevertRequire {

    mapping(address alumno => mapping(string materia => uint256 nota)) notasPorAlumno;

    error NotaIncorrecta(uint256 nota);
    error AddressZero();

    function guardarNota(
        address _alumno,
        string calldata _materia,
        uint256 _nota
    ) public {
        // 1G - La nota tiene que ser mayor o igual a 0 pero menor o igual a 20
        // require(_nota >= 0 && _nota <= 20, "Nota no esta entre 0 y 20");
        // if (_nota < 0 || _nota > 20) revert NotaIncorrecta(_nota);
        if (_nota < 0 || _nota > 20) revert NotaIncorrecta({nota: _nota});

        // 2G - El address del alumno no puede ser el address 0: 0x0000000000000000000000000000000000000000
        // require(_alumno != address(0), "Address no puede ser 0");
        if (_alumno == address(0)) revert AddressZero();

        // 3G - La materia no puede ser un string vacío
        // if (bytes(_materia).length == 0) revert("Materia esta vacia");
        require(bytes(_materia).length > 0, "Materia esta vacia");

        notasPorAlumno[_alumno][_materia] = _nota;

        // Validar si nuestra lógica de programación es correcta
        // Valida que no haya un bug en el proceso de guardar nota
        // Overkill tener un assert en cada función
        assert(notasPorAlumno[_alumno][_materia] == _nota);
    }

    function obtenerNota(
        address _alumno,
        string calldata _materia
    ) public view returns (uint256) {
        return notasPorAlumno[_alumno][_materia];
    }

    function borrarNota(address _alumno, string calldata _materia) public {
        //  1B - El address del alumno no puede ser el address 0: 0x0000000000000000000000000000000000000000
        // require(_alumno != address(0), "Address no puede ser 0");
        if (_alumno == address(0)) revert("Address no puede ser 0");

        delete notasPorAlumno[_alumno][_materia];
    }

    // NO ES POSIBLE:
    // En Solidity no se puede borrar un mapping completo, solo se puede borrar
    // un elemento del mapping.
    // Para borrar toda una fila se debe borrar elemento por elemento
    // function borrarAlumno(address _alumno) public {
    //     delete notasPorAlumno[_alumno];
    // }
}
```

En el caso del `revert` y `require` el error se propagará y será notado por el usuario en el front-end (dApp) antes de firmar una transacción mediante su billetera. Ejemplo de cómo se vería un error en producción [link](https://mumbai.polygonscan.com/tx/0xc96a8ad2c078065dae2c1fb02cf2590870346e17c5055e5ddc4637eb3f85d977):

![image-20221005063900106](https://user-images.githubusercontent.com/112733805/194439364-dad1caf3-0c8f-47d6-aca6-c12587945d4e.png)

## 
