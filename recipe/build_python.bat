#! /bin/sh

rm -rf build
mkdir build
cd build

cmake %CMAKE_ARGS% .. ^
      -G "Ninja" ^
      -DBUILD_PYTHON_INTERFACE=ON ^
      -DBUILD_STANDALONE_PYTHON_INTERFACE=ON ^
      -DBUILD_DOCUMENTATION=OFF
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
