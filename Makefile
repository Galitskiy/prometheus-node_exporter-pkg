.phony: all
all: build-deb

build-deb:      ## Build DEB package (needs other tools)
	exec ./build-deb-docker.sh
	
clean:
	rm -rf deb-package

help:           ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
