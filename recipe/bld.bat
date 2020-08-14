mkdir build
if errorlevel 1 exit 1

cd build
echo %SP_DIR%

::Configure
cmake ^
    -G "NMake Makefiles" ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DPYTHON_EXECUTABLE=%PYTHON% ^
    -DPYTHON_SITELIB=%PREFIX% ^
    %SRC_DIR%
if errorlevel 1 exit 1

:: Install
cmake --build . --config Release --target install
if errorlevel 1 exit 1
