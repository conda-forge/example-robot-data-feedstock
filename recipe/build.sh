#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -G "Ninja" \
      -DCMAKE_CXX_STANDARD=11 \
      -DPYTHON_EXECUTABLE=$PYTHON

ninja install
