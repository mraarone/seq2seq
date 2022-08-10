#!/bin/env bash

docker run -it --rm \
	-v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \
	-e SSH_AUTH_SOCK=$SSH_AUTH_SOCK \
	mraarone/pytorch-devenv:latest

# To run docker-on-docker, and to map user:group and sudoers.
#
#docker run -it --rm --gpus all \
#	-u $(id -u):$(id -g) \
#	-v /var/run/docker.sock:/var/run/docker.sock \
#	-v /etc/passwd:/etc/passwd:ro \
#	-v /etc/group:/etc/group:ro \
#	-v /etc/sudoers:/etc/sudoers \
#	mraarone/pytorch-devenv:latest
