#!/bin/bash

[ -d "/dist" ] && rm dist/*
poetry build
pip3 install instanseg --find-links=dist

python3 -m pytest
