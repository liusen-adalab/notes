- compile lotus
```
## use CUDA
RUSTFLAGS="-C target-cpu=native -g" FFI_BUILD_FROM_SOURCE=1 FFI_USE_CUDA=1 make all
```
