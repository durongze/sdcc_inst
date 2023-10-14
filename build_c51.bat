set KeilC51_HOME=F:\program\KeilC51\C51\
set PATH=%KeilC51_HOME%\bin;%PATH%

set SDCC_HOME=F:\program\sdcc
set PATH=%SDCC_HOME%\bin;%PATH%

set CMAKE_HOME=F:\program\cmake
set PATH=%CMAKE_HOME%\bin;%PATH%

mkdir dyzbuild
pushd dyzbuild
	cmake  ..
	cmake --build . 
popd
pause
