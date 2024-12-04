mkdir build
if errorlevel 1 exit 1

cd build

::Configure
cmake ^
    -G "Ninja" ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DPYTHON_EXECUTABLE=%PYTHON% ^
    -DPYTHON_SITELIB=%SP_DIR% ^
    %SRC_DIR%
if errorlevel 1 exit 1

:: Install
ninja install
if errorlevel 1 exit 1
