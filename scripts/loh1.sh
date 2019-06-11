#!/bin/bash

#BSUB -nnodes 16
#BSUB -core_isolation 2
#BSUB -W 120
#BSUB -G asccasc
#BSUB -J loh1-n16
#BSUB -q pbatch

date; hostname
echo -n 'Job ID is '; echo $LSB_JOBID
cd /g/g90/choi18/sw4lite/optimize_cuda_lassen

echo '1) LOH1 with blocking MPI communication'
lrun -T4 ./sw4lite-blocking ../tests/loh1/LOH.1-h50.in

echo '2) LOH1 with non-blocking MPI communication'
lrun -T4 ./sw4lite-nonblocking ../tests/loh1/LOH.1-h50.in

echo 'Done'
