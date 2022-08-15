#!/bin/env bash
#
# Run from project root.

docker buildx build --no-cache \
	-t "pytorch-devenv:latest" \
	-t "pytorch-devenv:$(date +%s)" \
	-f dockerfiles/Dockerfile.devenv \
	.
