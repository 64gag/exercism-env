DOCKER_IMAGE_NAME=64gag/exercism-venv-java

all: help

.PHONY: help
help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   2. make clean            - remove all images"
	@echo "   3. make push             - push all images"
	@echo ""

.PHONY: build
build:
	docker image build \
		--file Dockerfile \
		--tag "$(DOCKER_IMAGE_NAME)" \
		.

.PHONY: clean
clean:
	-docker image rm "$(DOCKER_IMAGE_NAME)"

.PHONY: push
push: build
	docker image push "$(DOCKER_IMAGE_NAME)"
