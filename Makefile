SHELL := /bin/bash

TESTS := $(patsubst %.test.jsonnet,%, $(shell find ./src -type f -name '*.test.jsonnet'))
TEST_DIR := ".test"

setup:
	@mkdir -p $(TEST_DIR)
	@rm -rf $(TEST_DIR)/*

test: setup $(TESTS)

%:
	@jsonnet -J ./src $@.test.jsonnet -o $(TEST_DIR)/$(notdir $@).json
	@if ! diff <(jq -S . $@.test.json) <(jq -S . $(TEST_DIR)/$(notdir $@).json); then echo "$@ : FAILED"; fi

.PHONY: setup test
