@echo on

if "%cuda_compiler_version%"=="None" (
    set CPU_ONLY=1
)

%PYTHON% -m pip install . -vv

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
