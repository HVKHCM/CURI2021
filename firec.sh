#!/bin/bash
# test fire on cluster and cleanup after cluster-set test
# to execute:
# git clone https://github.com/HVKHCM/CURI2021-Raspberry-Pi.git stest; stest/firec.sh

# test fire with cluster
soc-mpisetup -w
cd ~/CSinParallel/Exemplars/mpi4py-examples/fire/
python fire_mpi_simulate.py 24 0.4 10  # should show graph

cd ~
rm -rf spmd ~/hostfile ~/.openmpi/mca-params.conf stest

