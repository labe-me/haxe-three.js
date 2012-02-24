all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x stats.js/\* -x examples/\* -x eproject.cfg -x Makefile -x three.js.zip

update-threejs:
	cd three.js/utils && python build.py --common && cp ../build/Three.js ../../js/three/three-debug.js
	cd three.js/utils && python build.py --common --minified && cp ../build/Three.js ../../js/three/three-min.js
