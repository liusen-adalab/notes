set -e

## p1 
export FIL_PROOFS_USE_MULTICORE_SDR=1
export FIL_PROOFS_MULTICORE_SDR_PRODUCERS=1
export FIL_PROOFS_SDR_PARENTS_CACHE_SIZE=1073741824
export FIL_PROOFS_MAXIMIZE_CACHING=1
export FIL_PROOFS_VERIFY_CACHE=1

## c2
export FIL_PROOFS_USE_GPU_TREE_BUILDER=1
export FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1

## prameter 
export FIL_PROOFS_PARENT_CACHE="/home/ceshi/.storage/filecoin-parents"
export FIL_PROOFS_PARAMETER_CACHE="/home/ceshi/.storage/filecoin-proof-parameters"

## log 
export GOLOG_LOG_LEVEL=info
export GOLOG_FILE=./bench.log

## run
./lotus-bench sealing --storage-dir "./bench-dir" --sector-size 32GiB --save-commit2-input "./32Gproof.json" --parallel 1