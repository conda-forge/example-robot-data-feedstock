#! /bin/sh

rm -rf build
mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -G "Ninja" \
      -DBUILD_PYTHON_INTERFACE=ON \
      -DBUILD_STANDALONE_PYTHON_INTERFACE=ON \
      -DBUILD_DOCUMENTATION=OFF

ninja install
