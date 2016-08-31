#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install the latest python 2.7 and 3.4 from ppa.
$minimal_apt_get_install python3.4 python2.7

## Install pip (python 2.7) and virtualenv
curl https://bootstrap.pypa.io/get-pip.py | python -
pip install virtualenv
