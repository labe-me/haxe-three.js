all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x stats.js/\* -x examples/\* -x eproject.cfg -x Makefile -x three.js.zip

update-threejs:
	cd three.js/utils && python build.py --common && cp ../build/Three.js ../../js/three/three-debug.js
	cd three.js/utils && python build.py --common --minified && cp ../build/Three.js ../../js/three/three-min.js

update-statsjs:
	cd stats.js/utils && cp ../src/Stats.js ../../js/stats-debug.js
	cd stats.js/utils && python builder.py && cp ../build/Stats.js ../../js/stats-min.js