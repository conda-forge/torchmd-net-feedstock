if [ ${cuda_compiler_version} == "None" ]; then
    export CPU_ONLY=1
fi

# Fix duplicate include paths only for OSX ARM64
if [[ "$CONDA_BUILD_CROSS_COMPILATION" == "1" && "$target_platform" == "osx-arm64" ]]; then
    # Remove duplicate torch include path from venv
    export CFLAGS=$(echo $CFLAGS | sed 's|-I.*site-packages/torch/include||g')
    export CXXFLAGS=$(echo $CXXFLAGS | sed 's|-I.*site-packages/torch/include||g')
fi

$PYTHON -m pip install . -vv
