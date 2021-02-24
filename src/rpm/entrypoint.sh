#!/bin/bash

set -x

set -e

cd $HOME

yum install -y rpmdevtools

rpmdev-setuptree

rpmbuild -bb /src/asdf.spec

cp $HOME/rpmbuild/RPMS/x86_64/*.rpm /build

exit 0
