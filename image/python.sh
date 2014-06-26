#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install the latest python 2.7 and 3.4 from ppa.
$minimal_apt_get_install python3.4 python2.7
