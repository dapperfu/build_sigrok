#!/bin/sh

cd libserialport

./autogen.sh
./configure --prefix=/opt/sigrok
make -j8
make install
