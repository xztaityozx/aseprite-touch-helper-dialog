SHELL = /bin/bash

build: clean
	mkdir -p ./build
	zip build/touch-helper-dialog.zip ./{LICENSE,README.md,package.json,touch-helper-dialog.lua}
	mv build/touch-helper-dialog.{zip,aseprite-extension}

clean:
	rm -rf build
