SHELL = /bin/bash

build:
	mkdir -p ./build
	zip build/touch-helper-dialog.zip ./{LICENSE,README.md,package.json,touch-helper-dialog.lua}
	mv build/touch-helper-dialog.{zip,aseprite-extension}

clean:
	rm -rf build
