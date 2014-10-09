#!/bin/bash
# pwd is the git repo.
set -e

echo "Install Python dependencies"
pip install -r requirements/compiled.txt
pip install --no-deps -r requirements/dev.txt


echo "Creating a test database"
psql -c 'create database airmozilla;' -U postgres
