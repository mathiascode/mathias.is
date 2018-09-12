#!/bin/bash
cd $HOME/build/mathias.is/
rm -f Gemfile.lock
bundle install
if bundle exec jekyll build --destination $HOME/html/mathias.is/; then
	cd $HOME/html/mathias.is/
	rm -rf *.br
	rm -rf *.gz
	for file in `find . -type f -name '*'`; do
		$HOME/build/zopfli $file
		$HOME/build/brotli $file
	done
fi
