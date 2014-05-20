#!/bin/sh

autoscan
rm configure.ac
cp configure.in.bak configure.ac
aclocal
autoconf
autoheader
automake --add-missing
./configure CXXFLAGS= CFLAGS=
make
