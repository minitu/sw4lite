#!/bin/bash

#BSUB -nnodes 4
#BSUB -core_isolation 2
#BSUB -W 240
#BSUB -G asccasc
#BSUB -J rf-n4-t4
#BSUB -q pbatch

date; hostname
echo -n 'Job ID is '; echo $LSB_JOBID
cd /g/g90/choi18/gpuroofperf-toolkit/tool

python3 gpuroofperf-cli.py -x "lrun -N4 -T4" -o loh1-h63-l1bypass-N4T4.json /g/g90/choi18/sw4lite/optimize_cuda_lassen_l1bypass/sw4lite /g/g90/choi18/sw4lite/tests/loh1/LOH.1-h39.in

echo 'Done'
