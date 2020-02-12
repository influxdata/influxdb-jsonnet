SHELL := /bin/bash

TESTS := $(patsubst %.test.jsonnet,%, $(wildcard ./src/*/*.test.jsonnet))
TEST_DIR := ".test"

setup:
	@mkdir -p $(TEST_DIR)
	@rm -rf $(TEST_DIR)/*

test: setup $(TESTS)

%:
	@jsonnet -J ./src $@.test.jsonnet -o $(TEST_DIR)/$(notdir $@).json
	@diff <(jq -S . $@.test.json) <(jq -S . $(TEST_DIR)/$(notdir $@).json)

.PHONY: setup test
