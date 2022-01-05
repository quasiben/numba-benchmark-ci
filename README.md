# numba-benchmark-ci
Numba CUDA Nightly Benchmarks

> asv run --launch-method spawn --python=$CONDA_PREFIX/bin/python --show-stderr

```
 asv run --launch-method spawn --python=$CONDA_PREFIX/bin/python --show-stderr
· virtualenv package not installed
· Discovering benchmarks
· Running 5 total benchmarks (1 commits * 1 environments * 5 benchmarks)
[  0.00%] ·· Benchmarking existing-py_datasets_bzaitlen_miniconda3_envs_20211222-nightly-numba_bin_python
[ 10.00%] ··· Running (empty_kernels.time_empty_kernel--).....
[ 60.00%] ··· empty_kernels.time_empty_kernel                                                                                                                                                                                       92.6±0.7μs
[ 60.00%] ···· /datasets/bzaitlen/miniconda3/envs/20211222-nightly-numba/lib/python3.8/site-packages/numba/cuda/compiler.py:724: NumbaPerformanceWarning: Grid size (1) < 2 * SM count (160) will likely result in GPU under utilization due to low occupancy.
               warn(NumbaPerformanceWarning(msg))

[ 70.00%] ··· empty_kernels.time_four_arg_float32                                                                                                                                                                                      153±4μs
[ 70.00%] ···· /datasets/bzaitlen/miniconda3/envs/20211222-nightly-numba/lib/python3.8/site-packages/numba/cuda/compiler.py:724: NumbaPerformanceWarning: Grid size (1) < 2 * SM count (160) will likely result in GPU under utilization due to low occupancy.
               warn(NumbaPerformanceWarning(msg))

[ 80.00%] ··· empty_kernels.time_one_arg_float32                                                                                                                                                                                       115±1μs
[ 80.00%] ···· /datasets/bzaitlen/miniconda3/envs/20211222-nightly-numba/lib/python3.8/site-packages/numba/cuda/compiler.py:724: NumbaPerformanceWarning: Grid size (1) < 2 * SM count (160) will likely result in GPU under utilization due to low occupancy.
               warn(NumbaPerformanceWarning(msg))

[ 90.00%] ··· empty_kernels.time_three_args_float32                                                                                                                                                                                  137±0.7μs
[ 90.00%] ···· /datasets/bzaitlen/miniconda3/envs/20211222-nightly-numba/lib/python3.8/site-packages/numba/cuda/compiler.py:724: NumbaPerformanceWarning: Grid size (1) < 2 * SM count (160) will likely result in GPU under utilization due to low occupancy.
               warn(NumbaPerformanceWarning(msg))

[100.00%] ··· empty_kernels.time_two_args_float32                                                                                                                                                                                      128±1μs
[100.00%] ···· /datasets/bzaitlen/miniconda3/envs/20211222-nightly-numba/lib/python3.8/site-packages/numba/cuda/compiler.py:724: NumbaPerformanceWarning: Grid size (1) < 2 * SM count (160) will likely result in GPU under utilization due to low occupancy.
               warn(NumbaPerformanceWarning(msg))
```

