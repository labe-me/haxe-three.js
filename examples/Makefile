# you will haxe to start a temporary webserver so textures can be loaded and used by webgl
# call "nekotools server" for instance

all: t01 t02

t01:
	haxe -lib three.js -debug -main T01 -js t01.js

r01: t01
	open http://localhost:2000/t01.html

t02:
	haxe -lib three.js -debug -main T02 -js t02.js

r02: t02
	open http://localhost:2000/t02.html
