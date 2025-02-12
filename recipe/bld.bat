@echo on

set "WITH_CUDA=%cuda_compiler_version%" NEQ "None"

echo "WITH_CUDA: %WITH_CUDA%"

%PYTHON% -m pip install . -vv --no-build-isolation --no-deps

