NAME = ashwoods/pywhale
VERSION = 0.1.1

.PHONY: all build_image

build_image:
        docker build -t $(NAME)-full:$(VERSION) --rm image
