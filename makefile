all:
	pandoc index.md -o index.html --template template.html --css template.css --self-contained --toc --toc-depth 2
