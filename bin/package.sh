#!/bin/sh

rm -Rf build dist pkgmon.egg-info
python setup.py sdist
python setup.py bdist_wheel --universal
rm -Rf pkgmon.egg-info
