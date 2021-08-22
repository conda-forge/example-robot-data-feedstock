#!/bin/sh

mkdir build
cd build

export BUILD_SP_DIR=$( $PYTHON -c "import site; print(site.getsitepackages()[0])")
export BUILD_SP_DIR=$( $PYTHON -c "import pinocchio; print (pinocchio.__file__.split('/pinocchio/__init__.py')[0])")
export TARGET_SP_DIR=$SP_DIR

if [[ $CONDA_BUILD_CROSS_COMPILATION == 1 ]]; then
  echo "Copying files from $BUILD_SP_DIR to $TARGET_SP_DIR"
  cp -r $BUILD_SP_DIR/pinocchio $TARGET_SP_DIR/pinocchio
fi

cmake .. \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DPYTHON_EXECUTABLE=$PYTHON

make install
