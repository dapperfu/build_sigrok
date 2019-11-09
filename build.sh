#!/usr/bin/env bash

git submodule update --init --depth=1
git submodule foreach git fetch --all
git submodule foreach git checkout master

cd libserialport
./autogen.sh
./configure --prefix=/opt/sigrok
make -j8
make install
