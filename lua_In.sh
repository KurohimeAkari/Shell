#!/bin/bash

pwd

tar -xzvf lua-5.2.3.tar.gz
cd lua-5.2.3
make macosx
make test
sudo make install