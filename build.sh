#!/bin/bash
cd $HOME/build-websites/mathias-website/
rm Gemfile.lock
bundle install
if bundle exec jekyll build --destination $HOME/html/mathias.re/; then
	cd $HOME/html/mathias.re/
	rm -rf *.br
	rm -rf *.gz
	for file in `find . -type f -name '*'`; do
		$HOME/build-websites/zopfli $file
		$HOME/build-websites/brotli $file
	done
fi
