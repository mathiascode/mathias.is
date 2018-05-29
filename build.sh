#!/bin/bash
cd $HOME/build/mathias.re/
rm Gemfile.lock
bundle install
if bundle exec jekyll build --destination $HOME/html/mathias.re/; then
	cd $HOME/html/mathias.re/
	rm -rf *.br
	rm -rf *.gz
	for file in `find . -type f -name '*'`; do
		$HOME/build/zopfli $file
		$HOME/build/brotli $file
	done
fi
