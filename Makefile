all:

package:
	zip -r three.js.zip . -x .git\* -x three.js/\* -x stats.js/\* -x examples/\* -x eproject.cfg -x Makefile -x three.js.zip
