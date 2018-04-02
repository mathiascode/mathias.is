#!/bin/bash
cd $HOME/build-websites/mathias-website/
if jekyll build --destination $HOME/html/mathias.re/; then
	cd $HOME/html/mathias.re/
	rm -rf *.br
	rm -rf *.gz
	for file in `find . -type f -name '*' ! -name 'contact' ! -name 'report'`; do
		$HOME/build-websites/zopfli $file
		$HOME/build-websites/brotli $file
	done
fi
