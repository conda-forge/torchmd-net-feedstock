
export WITH_CUDA=$([ "${cuda_compiler_version}" == "None" ] && echo "0" || echo "1")
export ACCELERATOR=$([ "${cuda_compiler_version}" == "None" ] && echo "cpu" || echo "cu${cuda_compiler_version}")

echo "ACCELERATOR: $ACCELERATOR"
${PYTHON} -m pip install . -vv --no-build-isolation --no-deps
