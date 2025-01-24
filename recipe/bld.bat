@echo on

if "%cuda_compiler_version%"=="None" (
    set CPU_ONLY=1
)

:: Make the compilers look for headers in the conda include directory
:: I added this so that nvcc finds crypt.h, which is now installed separatedly from python
:: xref: https://github.com/conda-forge/linux-sysroot-feedstock/issues/52
set CPATH=%PREFIX%\include;%CPATH%

dir %PREFIX%\lib\site-packages\torch\lib
dir %PREFIX%\libs
dir %PREFIX%\Library\lib
dir %PREFIX%\Library\lib\x64

%PYTHON% -m pip install . -vv

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
