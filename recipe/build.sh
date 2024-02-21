if [ ${cuda_compiler_version} == "None" ]; then
    export CPU_ONLY=1
fi
# Make the compilers look for headers in the conda include directory
export CPATH=$PREFIX/include:$CPATH
$PYTHON -m pip install . -vv
