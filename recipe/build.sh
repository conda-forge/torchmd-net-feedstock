
export WITH_CUDA=$([ "${cuda_compiler_version}" == "None" ] && echo "0" || echo "1")

echo "WITH_CUDA: $WITH_CUDA"
$PYTHON -m pip install . -vv
