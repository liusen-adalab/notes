set -e

## p1 
export FIL_PROOFS_USE_MULTICORE_SDR=1
export FIL_PROOFS_MULTICORE_SDR_PRODUCERS=1
export FIL_PROOFS_SDR_PARENTS_CACHE_SIZE=1073741824
export FIL_PROOFS_MAXIMIZE_CACHING=1

## c2
export FIL_PROOFS_USE_GPU_TREE_BUILDER=1
export FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1

## prameter 
export FIL_PROOFS_PARENT_CACHE="/home/ceshi/.storage/filecoin-parents"
export FIL_PROOFS_PARAMETER_CACHE="/home/ceshi/.storage/filecoin-proof-parameters"

## log 
export GOLOG_LOG_LEVEL=info
export GOLOG_FILE=./bench.log

## CUDA
export BELLMAN_CUDA_NVCC_ARGS="--fatbin --gpu-architecture=sm_70 --generate-code=arch=compute_70,code=sm_70"
export NEPTUNE_CUDA_NVCC_ARGS="--fatbin --gpu-architecture=sm_70 --generate-code=arch=compute_70,code=sm_70"
export FIL_PROOFS_VERIFY_CACHE=1
export CUDA_VISIBLE_DEVICES=1
export GPU_DEVICE_ORDINAL=1

## log memory 
mlog="./mem.log"
n=0
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')" > $mlog
while [[ $n -lt 600 ]]
do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')" >> $mlog
    n=`expr $n + 1`
    sleep 1
done

## run
./lotus-bench prove ./32Gproof.json > ./bench-debug.log 2>> ./bench-debug.log