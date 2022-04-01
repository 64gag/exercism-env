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
	cd base && $(MAKE) $@
	cd java && $(MAKE) $@
	cd c && $(MAKE) $@

.PHONY: clean
clean:
	cd base && $(MAKE) $@
	cd java && $(MAKE) $@
	cd c && $(MAKE) $@

.PHONY: push
push: build
	cd base && $(MAKE) $@
	cd java && $(MAKE) $@
	cd c && $(MAKE) $@
