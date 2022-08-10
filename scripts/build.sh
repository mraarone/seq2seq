#!/bin/env bash
#
# Run from project root.

docker buildx build \
	--push \
	-t "pytorch-devenv:latest" \
	-t "pytorch-devenv:$(date +%s)" \
	-f dockerfiles/Dockerfile.devenv
	.
