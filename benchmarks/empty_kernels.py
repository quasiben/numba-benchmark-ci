from numba import cuda
import numpy as np

threadsperblock = 32
blockspergrid = 1

@cuda.jit('void()')
def _empty_kernel():
     return

@cuda.jit('void(float32[:])')
def _one_arg_float32(arr1):
    return

@cuda.jit('void(float32[:],float32[:])')
def _two_args_float32(arr1,arr2):
    return

@cuda.jit('void(float32[:],float32[:],float32[:])')
def _three_args_float32(arr1,arr2,arr3):
    return

@cuda.jit('void(float32[:],float32[:],float32[:],float32[:])')
def _four_args_float32(arr1,arr2,arr3,arr4):
    return

arr = cuda.device_array(10000, dtype=np.float32)

def time_empty_kernel():
    stream = cuda.stream()
    _empty_kernel[blockspergrid, threadsperblock]()
    stream.synchronize()

def time_one_arg_float32():
    stream = cuda.stream()
    _one_arg_float32[blockspergrid, threadsperblock](arr)
    stream.synchronize()

def time_two_args_float32():
    stream = cuda.stream()
    _two_args_float32[blockspergrid, threadsperblock](arr, arr)
    stream.synchronize()

def time_three_args_float32():
    stream = cuda.stream()
    _three_args_float32[blockspergrid, threadsperblock](arr, arr, arr)
    stream.synchronize()

def time_four_arg_float32():
    stream = cuda.stream()
    _four_args_float32[blockspergrid, threadsperblock](arr, arr, arr, arr)
    stream.synchronize()

