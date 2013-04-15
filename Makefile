all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x stats.js/\* -x examples/\* -x eproject.cfg -x Makefile -x three.js.zip

update-threejs:
	cd three.js/utils/build && sh build.sh \
	&& cp ../../build/three.js ../../../vendor/three.js/three.js \
	&& cp ../../build/three.min.js ../../../vendor/three.js/three.min.js

update-statsjs:
	cd stats.js/utils && cp ../src/Stats.js ../../vendor/stats.js/stats-debug.js
	cd stats.js/utils && python builder.py && cp ../build/stats.min.js ../../vendor/stats.js/stats-min.js
