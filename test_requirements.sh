#!/bin/bash

# Exit script on any error
# set -e

deactivate 

rm -rf venv

# Create virtual environment in 'venv' folder
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install requirements
pip install -r requirements.txt

echo "Virtual environment setup complete and requirements installed."
