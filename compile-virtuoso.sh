#!/usr/bin/env bash

cd virtuoso-opensource
git checkout stable/7
./autogen.sh
./configure --prefix=$PWD/install
make
make install