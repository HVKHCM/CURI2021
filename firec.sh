#!/bin/bash
# test fire on cluster and cleanup after cluster-set test
# to execute:
# git clone https://github.com/HVKHCM/CURI2021-Raspberry-Pi.git stest; stest/firec.sh

# test fire with cluster
#soc-mpisetup -w
cd ~/CSinParallel/Exemplars/mpi4py-examples/fire/
mpirun -np 4 -hostfile ~/hostfile python fire_mpi_simulate.py 10 0.1 20

cd ~
rm -rf spmd ~/hostfile ~/.openmpi/mca-params.conf stest

