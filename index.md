# Tutorial en Markdown de las fases iniciales

## 1. Instalar Git
En nuestro caso utilizamos el sistema operativo Ubuntu, por lo que simplemente abrimos una terminal y ejecutamos el siguiente comando:

>sudo apt-get install git

## 2. Instalar NodeJS
Para instalar NodeJS, podemos ejecutar directamente los comandos:
>sudo apt-get install nodejs  
>sudo apt-get install npm

Sin embargo, hemos observado que no siempre se nos instala la última versión disponible, por lo que obtaremos por utilizar otro método donde nos descargaremos el código fuente, lo compilaremos y lo instalaremos. Esto procedimiento es lento. Estos serían los pasos:

>wget https://nodejs.org/dist/v5.6.0/node-v5.6.0.tar.gz  
>tar xzvf node-v5.6.0.tar.gz  
>cd node-v5.6.0  
>./configure  
>make  
>sudo make install  

Cambiamos el propietario del directorio de root al nuestro, para evitar futuros problemas:

>sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}  

![](/images/captura_nodejs.png)  
Aquí podemos observar las versiones una vez instalado NodeJS

## 3. Instalar Express
Para instalar Express nos valdrá con ejecutar únicamente el comando:  

>npm install express --save

![](/images/captura_express.png)  
Este será el resultado de nuestra terminal cuando ejecutemos dicho comando.

## 4. Instalar Atom
Instalar el editor de texto Atom es muy sencillo en Ubuntu. Visitaremos la página del editor Atom y nos descargaremos la versión del [paquete de Debian](https://atom.io/download/deb). Una vez descargado, ejecutaremos el siguiente comando que descomprimirá el archivo y lo instalará:  
>sudo dpkg -i atom-amd64.deb  

![](/images/captura_atom.png)  
El resultado debería ser el que se muestra en la imagen.

##5. Instalar Pandoc
Para instalar Pandoc, debemos de descargar la última versión del mismo del [paquete de Debian desde la propia página del proyecto en GitHub](https://github.com/jgm/pandoc/releases/download/1.16.0.2/pandoc-1.16.0.2-1-amd64.deb). Una vez descargado, ejecutamos el comando:
>ar p $DEB data.tar.gz | sudo tar xvz --strip-components 2 -C /usr/local  

Donde aparece '$DEB' debemos de poner la ruta de nuestro archivo descargado. Una vez hecho, comprobaremos que se ha instalado correctamente.  

![](/images/captura_pandoc.png)  
El resulatado tendría que ser igual al mostrado en la imagen. Utilizamos el siguiente comando para convertir nuestro archivo en Markdown a uno en HTML:  
>pandoc nombrefichero.md  

##6. Cloud9

[Cloud9](http://c9.io) es un IDE online gratuito que funciona creando máquinas virtuales para cada uno de nuestros proyectos. Trabaja con numerosos lenguajes de programación, y además es muy sencillo de utilizar.  
Contamos con espacios de trabajo o Workspaces, los cuáles son una máquina virtual distinta cada uno de ellos.  
Para la creación de uno de ellos, simplemente pulsamos en el botón grande que pone **Create a new workspace**. Para esta asignatura, la configuración debería de ser la siguiente:  
![](/images/captura_c9.png)  
Este es el resultado de nuestro espacio de trabajo:  
![](/images/captura_c9_2.png)  



Tutorial NodeJS, Express, Atom, GitHub, Cloud9 y Markdown
======================================================

## Instalación de NodeJS en Windows

Es un intérprete **Javascript** del lado del servidor que cambia la noción de cómo debería trabajar un servidor. Su meta es permitir a un programador construir aplicaciones altamente escalables y escribir código que maneje decenas de miles de conexiones simultáneas en una sólo una máquina física.

Para empezar a utilizarlo descargar el paquete de instalación para la plataforma windows y seguir los pasos del asistente de instalación de **NodeJS**.

![](images/node.png)

Abrimos la consola de **NodeJS** y comprobamos que se ha instalado correctamente, aparecerá el siguiente mensaje que indica que se ha instalado.

Instalamos el framework **Express** con la consola de **NodeJS** y el siguiente comando:

**Comando**

> `npm install express --save`

![](images/node2.png)

## Instalación del editor de texto Atom

Usaremos **Atom** como editor de texto para el desarrollo de nuestros proyectos, para ello descargamos el instalador en la página oficial de atom, y a continuación ejecutamos el asistente de instalación.

![](images/atom1.png)

Dado que vamos a utilizar el formato **Markdown** es bueno saber que en **Atom** podremos obtener una preview del contenido de nuestro fichero Markdown ya que incorpora el formato **GitHub Markdown** con el comando:

**Comando**

> * Markdown preview `ctrl+shift+m`
> * Markdown export to HTML `Save As HTML`



## Instalación de GitHub Desktop

GitHub es una plataforma para alojar proyectos utilizando el sistema de control de versiones **Git**. Para instalarlo accedemos a la página oficial de **GitHub** y descargamos el instalador que ejecutaremos posteriormente para iniciar el asistente de instalación.

![](images/git.png)

Una vez instalado configuramos nuestra cuenta de **GitHub** en la aplicación para poder sincronizar nuestro repositorio tanto local como remoto, en caso de no tener cuenta crearemos una en la página de **GitHub**.

## Cloud 9

Es un IDE de desarrollo online, para su uso será necesario crear una cuenta en la página oficial o acceder con las credenciales de GitHub si ya se dispone de una cuenta. Una vez registrados podremos crear proyectos de varias tecnologías como puede ser NodeJS, HTML5, C++, Ruby On Rails, etc.

![](images/cloud.png)

Si disponemos de algún proyecto en un repositorio de GitHub podremos asociarlo a **Cloud9** para trabajar en él tan solo creando un “`nuevo workspace`” y añadiendo la url *git* del correspondiente repositorio.

![](images/cloud2.png)

Además **Cloud9** permite el trabajo en equipo en el IDE añadiendo miembros a tu workspace.

## Markdown

Markdown es un lenguaje de marcado ligero, lo vamos a utilizar en el editor de texto Atom ya que incorpora por defecto este formato y podremos obtener un live preview mientras vamos desarrollando además de poder exportarlo a HTML sin la necesidad de usar un conversor adicional.

Sintaxis:


Encabezados
```
# Encabezado H1
## Encabezado H2
### Encabezado H3
```
Tipografía
```
**Negrita**
*Cursiva*
> Citas
Parrafo separar por lineas en blanco
`Codigo`
```
Recursos
```
![Texto imagen](url-imagen)
* [Links](https://example.com)
```
Listas
```
1. Lista 1
2. Lista 2

* Lista 1
* Lista 2
```

**Recursos:**

* [NodeJS](https://nodejs.org)
* [Express](http://expressjs.com)
* [Atom IDE](https://atom.io)
* [GitHub Desktop](https://desktop.github.com)
* [GitHub Pages](https://pages.github.com/)
* [Cloud 9 IDE](https://c9.io)
* [Markdown](http://daringfireball.net/projects/markdown/)
* [Resultado del Markdown HTML](http://alu0100536652.github.io/Tutorial-STW/)
