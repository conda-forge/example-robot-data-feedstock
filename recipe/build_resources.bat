#! /bin/sh

mkdir build
cd build

cmake %CMAKE_ARGS% .. ^
      -G "Ninja" ^
      -DBUILD_PYTHON_INTERFACE=OFF
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
