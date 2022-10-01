#!/bin/bash

cython faceLandmark.py --embed

PYTHONLIBVER=python$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')$(python3-config --abiflags)

gcc -Os $(python3-config --includes) faceLandmark.c -o faceLandmark $(python3-config --ldflags) -l$PYTHONLIBVER
