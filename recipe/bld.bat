@echo on

IF "%cuda_compiler_version%"=="None" (
    SET WITH_CUDA=0
) ELSE (
    SET WITH_CUDA=1
)

echo WITH_CUDA: %WITH_CUDA%

%PYTHON% -m pip install . -vv --no-build-isolation --no-deps

