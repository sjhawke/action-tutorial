#!/bin/bash

docker run -e LOG_LEVEL=WARN \
        -e RUN_LOCAL=true \
        -e FILTER_REGEX_EXCLUDE='^(docs|.github|tests|dist)/' \
        -e VALIDATE_ALL_CODEBASE=true  \
        -e LOG_FILE=/tmp/lint/super-linter.log \
        -v '$(pwd)':/tmp/lint \
        -e DEFAULT_BRANCH=main \
        ghcr.io/super-linter/super-linter:latest
