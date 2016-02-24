# Tutorial en Markdown de las fases iniciales

## 1. Instalar Git
En nuestro caso utilizamos el sistema operativo Ubuntu, por lo que simplemente abrimos una terminal y ejecutamos el siguiente comando:

    sudo apt-get install git  

## 2. Instalar NodeJS
Para instalar NodeJS, podemos ejecutar directamente los comandos:
    sudo apt-get install nodejs  
    sudo apt-get install npm  

Sin embargo, hemos observado que no siempre se nos instala la última versión disponible, por lo que obtaremos por utilizar otro método donde nos descargaremos el código fuente, lo compilaremos y lo instalaremos. Esto procedimiento es lento. Estos serían los pasos:

    wget https://nodejs.org/dist/v5.6.0/node-v5.6.0.tar.gz  
    tar xzvf node-v5.6.0.tar.gz  
    cd node-v5.6.0  
    ./configure  
    make  
    sudo make install  

Cambiamos el propietario del directorio de root al nuestro, para evitar futuros problemas:

    sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}  

![](/images/captura_nodejs.png)  
Aquí podemos observar las versiones una vez instalado NodeJS

## 3. Instalar Express
Para instalar Express nos valdrá con ejecutar únicamente el comando:  

    npm install express --save  

![](/images/captura_express.png)  
Este será el resultado de nuestra terminal cuando ejecutemos dicho comando.

## 4. Instalar Atom
Instalar el editor de texto Atom es muy sencillo en Ubuntu. Visitaremos la página del editor Atom y nos descargaremos la versión del [paquete de Debian](https://atom.io/download/deb). Una vez descargado, ejecutaremos el siguiente comando que descomprimirá el archivo y lo instalará:  
    sudo dpkg -i atom-amd64.deb  

![](/images/captura_atom.png)  
El resultado debería ser el que se muestra en la imagen.

##5. Instalar Pandoc
Para instalar Pandoc, debemos de descargar la última versión del mismo del [paquete de Debian desde la propia página del proyecto en GitHub](https://github.com/jgm/pandoc/releases/download/1.16.0.2/pandoc-1.16.0.2-1-amd64.deb). Una vez descargado, ejecutamos el comando:
    ar p $DEB data.tar.gz | sudo tar xvz --strip-components 2 -C /usr/local  

Donde aparece '$DEB' debemos de poner la ruta de nuestro archivo descargado. Una vez hecho, comprobaremos que se ha instalado correctamente.  

![](/images/captura_pandoc.png)  
El resulatado tendría que ser igual al mostrado en la imagen. Utilizamos el siguiente comando para convertir nuestro archivo en Markdown a uno en HTML:  
    pandoc nombrefichero.md  

Las posibilidades que nos brinda Pandoc son inmensas. En nuestro caso, le hemos dado formato al HTML incluyendo un archivo CSS. Si buscamos en Google 'pandoc css markdown' veremos numerosas plantillas de estilos. En nuestro caso hemos utilizado una de [dashed](https://gist.github.com/Dashed/6714393#file-github-pandoc-css).  
Para obtener la nueva salida, ejecutamos el comando con nuevas opciones:  
    pandoc -s -S --toc -c pandoc.css index.md -o index.html

##6. Cloud9

[Cloud9](http://c9.io) es un IDE online gratuito que funciona creando máquinas virtuales para cada uno de nuestros proyectos. Trabaja con numerosos lenguajes de programación, y además es muy sencillo de utilizar.  
Contamos con espacios de trabajo o Workspaces, los cuáles son una máquina virtual distinta cada uno de ellos.  
Para la creación de uno de ellos, simplemente pulsamos en el botón grande que pone **Create a new workspace**. Para esta asignatura, la configuración debería de ser la siguiente:  
![](/images/captura_c9.png)  
Este es el resultado de nuestro espacio de trabajo:  
![](/images/captura_c9_2.png)  

## Referencias
* [Git](https://git-scm.com/)  
* [GitHub](https://github.com/)  
* [NodeJS](https://nodejs.org/en/)  
* [Express](http://expressjs.com/es/)  
* [Atom](https://atom.io/)  
* [Pandoc](http://pandoc.org/)  
* [Cloud9](https://c9.io)
* [Markdown](https://es.wikipedia.org/wiki/Markdown)  
* [Este archivo en Markdown](https://github.com/Rafaherrero/rafa-daniel-pedro-dsi1516/blob/master/index.md)  
* [Este archivo en HTML](http://rafaherrero.github.io/rafa-daniel-pedro-dsi1516/)  
