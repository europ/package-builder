#!/bin/bash

set -x

set -e

cd $HOME

mkdir -p PKG \
         PKG/DEBIAN \
         PKG/etc/ \
         PKG/etc/apt/ \
         PKG/etc/apt/sources.list.d

cp /src/debian/* PKG/DEBIAN
cp /src/asdf.list PKG/etc/apt/sources.list.d/asdf.list

dpkg-deb --build --verbose PKG asdf.deb

cp *.deb /build

exit 0
