#!/bin/env bash

docker image tag pytorch-devenv:latest mraarone/pytorch-devenv:latest
docker image push mraarone/pytorch-devenv:latest

docker image tag pytorch-devenv:latest mraarone/pytorch-devenv:1.0.1
docker image push mraarone/pytorch-devenv:1.0.1