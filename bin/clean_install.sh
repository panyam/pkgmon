#!/bin/bash

PYTHON=`which python`
PYTHON_DIR=`dirname $PYTHON`
PYTHON_LIB_DIR=`dirname $PYTHON_DIR`
echo PYTHON=$PYTHON
echo PYTHON_DIR=$PYTHON_DIR
echo PYTHON_LIB_DIR=$PYTHON_LIB_DIR

rm -Rf build dist onering.egg-info
python setup.py sdist
python setup.py bdist_wheel --universal
rm -Rf onering.egg-info
