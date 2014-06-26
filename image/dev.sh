#!/bin/bash
set -e
source /build/buildconfig
set -x

## Headers and utilites for building pyenv python
$minimal_apt_get_install  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm

## Headers and libraries for building popular python packages, i.e. Pillow
$minimal_apt_get_install


