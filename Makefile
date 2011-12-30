all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x examples/\*.js -x eproject.cfg -x Makefile -x three.js.zip
