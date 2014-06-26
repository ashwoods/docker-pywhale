#!/bin/bash
set -e
source /build/buildconfig
set -x

/build/repos.sh
/build/prepare.sh
/build/dev.sh
/build/utils.sh
/build/python.sh
/build/cleanup.sh



