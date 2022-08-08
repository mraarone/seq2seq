#!/bin/bash

# This script is executed by the container at startup.

# Install all of the requirements with pip, activate the virtualenv.
pip install -r requirements.txt
. .venv/bin/activate
