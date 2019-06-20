#!/bin/bash

#BSUB -nnodes 1
#BSUB -core_isolation 2
#BSUB -W 120
#BSUB -G asccasc
#BSUB -J loh1-rf
#BSUB -q pbatch

date; hostname
echo -n 'Job ID is '; echo $LSB_JOBID
cd /g/g90/choi18/gpuroofperf-toolkit/tool

python3 gpuroofperf-cli.py -o loh1-h100.json /g/g90/choi18/sw4lite/optimize_cuda_lassen/sw4lite /g/g90/choi18/sw4lite/tests/loh1/LOH.1-h100.in

echo 'Done'
