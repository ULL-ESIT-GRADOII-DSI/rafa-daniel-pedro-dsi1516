# Tutorial las Tareas Iniciales

# Table of Contents
1. [Instalar NodeJS](#instalar-nodejs)

## Instalar NodeJS
> Node.js es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor (pero no limitándose a ello) basado en el lenguaje de programación ECMAScript, asíncrono, con I/O de datos en una arquitectura orientada a eventos y basado en el motor V8 de Google.

Hay distintas formas de instalar Node, una de ellas (y posiblemente la más sencilla), es mediante el script [nvm](https://github.com/creationix/nvm). El problema de este script es que es específico de Bash, por lo que si usamos un intéprete distinto (como en mi caso que uso [fish](https://github.com/fish-shell/fish-shell) no nos funcionará o tendremos problemas.

Es por esta razón que al final he decidido descargar el código fuente y compilarlo e instalarlo. A continuación enumero los pasos que he seguido.

1. Descargar el código fuente desde la [página de descargas de Node](https://nodejs.org/en/download/)

        wget https://nodejs.org/dist/v5.6.0/node-v5.6.0.tar.gz

2. Descomprimir el fichero

        tar -xfz node-v5.6.0.tar.gz