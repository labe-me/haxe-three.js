all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x stats.js/\* -x examples/\* -x eproject.cfg -x Makefile -x three.js.zip

update-threejs:
	cd three.js/utils/build && sh build.sh \
	&& cp ../../build/three.js ../../../js/three/three-debug.js \
	&& cp ../../build/three.min.js ../../../js/three/three-min.js

update-statsjs:
	cd stats.js/utils && cp ../src/Stats.js ../../js/stats-debug.js
	cd stats.js/utils && python builder.py && cp ../build/stats.min.js ../../js/stats-min.js
