SHELL = /bin/bash

build:
	mkdir -p ./build
	zip build/touch-helper-dialog.zip ./{LICENSE,README.md,package.json,touch-helper-dialog.lua}
	mv build/touch-helper-dialog.{zip,aseprite-extension}

release: build
	mv build/touch-helper-dialog.aseprite-extension build/touch-helper-dialog-$(TAG).aseprite-extension

clean:
	rm -rf build
