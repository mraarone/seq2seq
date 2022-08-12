#!/bin/env bash

# For local mode, optionally to NOT use Docker Desktop on Windows 10+,
# may consider giving instructions to run this with GPUs from:
# https://gregbouwens.com/docker-with-gpu-enabled-on-windows/

# Set up ssh-agent to run on yoru local WSL 2 or Ubuntu installation
# and ssh-agent as per the README.md, and your SSH keys will pass-through.
docker run -it --rm --gpus all \
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
