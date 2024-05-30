#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -DCMAKE_CXX_STANDARD=11 \
      -DPYTHON_EXECUTABLE=$PYTHON

make install
