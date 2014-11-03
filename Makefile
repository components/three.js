VERSION=r69

default:
	@curl -O https://cdnjs.cloudflare.com/ajax/libs/three.js/$(VERSION)/three.js
	@curl -O https://cdnjs.cloudflare.com/ajax/libs/three.js/$(VERSION)/three.min.js

.PHONY: default
