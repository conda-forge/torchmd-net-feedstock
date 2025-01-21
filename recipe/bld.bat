@echo off

if "%cuda_compiler_version%"=="None" (
    set CPU_ONLY=1
)

:: Make the compilers look for headers in the conda include directory
:: I added this so that nvcc finds crypt.h, which is now installed separatedly from python
:: xref: https://github.com/conda-forge/linux-sysroot-feedstock/issues/52
set CPATH=%PREFIX%\include;%CPATH%

%PYTHON% -m pip install . -vv