#! /usr/bin/env sh

git clone --depth=1 --branch=master git@github.coecis.cornell.edu:rv22/harmony.git temp_harmony_clone
mv ./temp_harmony_clone/install.py install.py

rm -rf temp_harmony_clone
