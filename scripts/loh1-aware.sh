#!/bin/bash

#BSUB -nnodes 16
#BSUB -core_isolation 2
#BSUB -W 120
#BSUB -G asccasc
#BSUB -J loh1-n16-aware
#BSUB -q pbatch

date; hostname
echo -n 'Job ID is '; echo $LSB_JOBID
cd /g/g90/choi18/sw4lite/optimize_cuda_lassen_aware

lrun -T4 --smpiargs="-gpu" ./sw4lite ../tests/loh1/LOH.1-h50.in

echo 'Done'
