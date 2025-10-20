#! /bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -G "Ninja" \
      -DBUILD_PYTHON_INTERFACE=OFF

ninja install
