#!/bin/sh

# Script que genera la página con pandoc y la mueve a gh-pages

echo "Obteniendo dirección"

REPO_URL=$(git remote show origin | grep Fetch | awk '{print $3}')

echo "Clonando"
git clone $REPO_URL tmp

echo "Entrnado a tmp"
cd tmp
if git branch | grep gh-pages;
then
	echo "Creando nueva rama gh-pages"
	git checkout -b gh-pages
else
	echo "Cambiando a rama gh-pages"
	git checkout gh-pages
fi

echo "Eliminando index.html antiguo e imágenes"
rm -f index.html
rm -rf images

echo "Generando html"
pandoc -s -o index.html ../index.md -c style.css

echo "Copiando imagenes"
cp -R ../images .

echo "Copiando hoja de estilos"
cp ../style.css .

echo "Añadiendo al stage"
git add .

echo "Confirmando los cambios"
git commit -m "Updating gh-pages"

echo "Enviando cambios"
git push origin gh-pages

echo "Saliendo del directorio"
cd ..

echo "Eliminando directorio temporal"
rm -rf tmp
