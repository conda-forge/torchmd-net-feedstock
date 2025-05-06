@echo on

IF "%cuda_compiler_version%"=="None" (
    SET ACCELERATOR="cpu"
    SET WITH_CUDA=0
) ELSE (
    SET ACCELERATOR="cu%cuda_compiler_version%"
    SET WITH_CUDA=1
)

echo ACCELERATOR: %ACCELERATOR%

%PYTHON% -m pip install . -vv --no-build-isolation --no-deps

