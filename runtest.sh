#!/bin/bash

cd ~/CURI2021-Raspberry-Pi
(cd .. ; tar cf - CSinParallel) | sudo tar xf -

#Create a log for output of testing
source test.sh > log.txt 2>&1

#Checking the manifest
#If nothing show up, it means it fit the manifest
diff log.txt manifest.txt
rm log.txt
rm manifest.txt

#Checking the patternlets
source patterntest.sh

#Check fire with graphics
cd ~/stest/CSinParallel/Exemplars/mpi4py-examples/fire
python fire_sequential_once.py 24 0.4   # should show graph

#checking wifi
ping 8.8.8.8
